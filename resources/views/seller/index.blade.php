@extends('layouts.backend.app')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Sellers</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">Sellers</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <div class="col-12">
        @if (Session::has('success'))
        <div class="alert alert-success alert-dismissible fs-15 fade show mb-4">
            {{ session('success') }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif
    </div>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Sellers</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered" id="seller-datatable">
                                <thead>
                                    <tr>
                                        <th style="width: 10px">#</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Country</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                {{-- <tbody>
                                    @foreach($module_data as $data)
                                    <tr>
                                        <td>{{ $data->id }}</td>
                                        <td>{{ $data->full_name }}</td>
                                        <td>{{ $data->country }}</td>
                                        <td>{{ $data->email }}</td>
                                        
                                        <td>
                                            @if ($data->status == 1)
                                            <div class="badge bg-success">Active</div>
                                            @else
                                            <div class="badge bg-danger">Inactive</div>
                                            @endif
                                        </td>
                                        <td>
                                            <a href="{{ route('admin.seller.show', $data) }}" class="btn btn-warning"><i class="fas fa-eye"></i></a>
                                            <form action="{{ route('admin.seller.destroy', $data) }}" method="POST" style="display: inline;">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')"><i class="fas fa-trash"></i></button>
                                            </form>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody> --}}
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection


@section('script')
 <script>
  $(function() {
   $('#seller-datatable').DataTable({
    processing: true,
    serverSide: true,
    ajax: '{{ route('admin.seller.data') }}',
    columns: [
     {
      data: 'id',
      name: 'id'
     },
     {
      data: 'name',
      name: 'name'
     },
     {
      data: 'country',
      name: 'country'
     },
     {
      data: 'email',
      name: 'email'
     },
     {
      data: 'status',
      name: 'status'
     },
     {
      data: 'action',
      name: 'action',
      orderable: false,
      searchable: false
     }
    ]
   });
  });
 </script>
@endsection
