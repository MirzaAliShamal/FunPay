@extends('layouts.backend.app')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Offer Field</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">Offer Field</li>
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
                            <h3 class="card-title">Offer Field</h3>
                            <a href="{{ route('admin.offerfield.create') }}" class="btn btn-info float-right">New</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered" id="offer-field-categories">
                                <thead>
                                    <tr>
                                        <th style="width: 10px">#</th>
                                        <th>Offer Category</th>
                                        <th>Label</th>
                                        <th>Values</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
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
@section('script')
 <script>
  $(function() {
   $('#offer-field-categories').DataTable({
    processing: true,
    serverSide: true,
    ajax: '{{ route('admin.offerField.data') }}',
    columns: [{
      data: 'id',
      name: 'id'
     },
     {
      data: 'offer category',
      name: 'offer category'
     },
     {
      data: 'label',
      name: 'label',
     },
     {
      data: 'values',
      name: 'values',
     },
     {
      data: 'status',
      name: 'status',
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
