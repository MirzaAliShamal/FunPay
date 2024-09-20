@extends('layouts.backend.app')

@php
    use Carbon\Carbon;
@endphp

@section('style')

@endsection

@section('content')
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Dashboard</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">Home</li>
            <li class="breadcrumb-item active">Dashboard</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-3 col-6">
          <div class="small-box bg-info">
            <div class="inner">
              <h3>{{$sellersCount}}</h3>
              <p>Total Sellers</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-6">
          <div class="small-box bg-success">
            <div class="inner">
              <h3>{{$buyersCount}}</h3>
              <p>Total Buyers</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-6">
          <div class="small-box bg-warning">
            <div class="inner">
              <h3>44</h3>
              <p>User Registrations</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-6">
          <div class="small-box bg-danger">
            <div class="inner">
              <h3>65</h3>
              <p>Unique Visitors</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="row mb-2">
        <div class="col-sm-6">
            <h1 class="m-0">Monthly Graph</h1>
        </div>
        <div class="col-sm-6 text-right">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#filterModal">
                Filters
            </button>
        </div>
      </div>

      <div class="container-fluid">
        <canvas id="myChart"></canvas>
      </div>

      <!-- Filter Modal -->
      <div class="modal fade" id="filterModal" tabindex="-1" role="dialog" aria-labelledby="filterModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h5 class="modal-title" id="filterModalLabel">Filters</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
                  <div class="modal-body">
                      <div class="form-group">
                          <label for="monthFilter">Month</label>
                          <select id="monthFilter" class="form-control">
                              <option value="">ALL</option>
                              @for ($i = 1; $i <= 12; $i++)
                                  <option value="{{ $i }}">{{ date('F', mktime(0, 0, 0, $i, 1)) }}</option>
                              @endfor
                          </select>
                      </div>
                      <div class="form-group">
                          <label for="yearFilter">Year</label>
                          <select id="yearFilter" class="form-control">
                              <option value="">Select Year</option>
                              @foreach (range(Carbon::now()->year - 5, Carbon::now()->year) as $year)
                                  <option value="{{ $year }}">{{ $year }}</option>
                              @endforeach
                          </select>
                      </div>
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="button" class="btn btn-primary" id="filterSearch">Search</button>
                  </div>
              </div>
          </div>
      </div>

    </section>
</div>
@endsection

@section('script')
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
{{-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> --}}

<script>
    const ctx = document.getElementById('myChart').getContext('2d');
    let myChart;

    // Function to fetch monthly data
    function fetchMonthlyData(month = null, year = null) {
        let url = '{{ route('admin.monthly.data') }}';
        if (month || year) {
            url += `?month=${month || ''}&year=${year || ''}`;
        }
        return fetch(url).then(response => response.json());
    }

    // Initial chart rendering
    fetchMonthlyData().then(data => {
        myChart = new Chart(ctx, {
            type: 'bar', // Change to 'bar' or 'line' depending on your preference
            data: {
                labels: data.months,
                datasets: [
                    {
                        label: 'Total Sellers',
                        data: data.sellers,
                        backgroundColor: 'rgba(75, 192, 192, 0.6)', // Semi-transparent color
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1,
                    },
                    {
                        label: 'Total Buyers',
                        data: data.buyers,
                        backgroundColor: 'rgba(255, 99, 132, 0.6)', // Semi-transparent color
                        borderColor: 'rgba(255, 99, 132, 1)',
                        borderWidth: 1,
                    }
                ]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    });

    // Update chart based on filter changes
    document.getElementById('filterSearch').addEventListener('click', function() {
        const selectedMonth = document.getElementById('monthFilter').value;
        const selectedYear = document.getElementById('yearFilter').value;

        // Fetch data based on selected filters
        fetchMonthlyData(selectedMonth, selectedYear).then(data => {
            myChart.data.labels = data.months;
            myChart.data.datasets[0].data = data.sellers;
            myChart.data.datasets[1].data = data.buyers;
            myChart.update();
            $('#filterModal').modal('hide'); // Close the modal
        });
    });
</script>
@endsection
