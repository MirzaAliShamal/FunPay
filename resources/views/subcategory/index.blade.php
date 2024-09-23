@extends('layouts.backend.app')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Sub Categories</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">Sub Categories</li>
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
                            <h3 class="card-title">Sub Categories</h3>
                            <a href="{{ route('admin.subcategory.create') }}" class="btn btn-info float-right">New</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered" id="subcategory-datatable">
                                <thead>
                                    <tr>
                                        <th style="width: 10px">#</th>
                                        <th>Name</th>
                                        <th>Category</th>
                                        <th>Offer Type</th>
                                        <th>Permalink</th>
                                        <th>Status</th>
                                        <th>Filters</th> <!-- New column for filters -->
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                {{-- <tbody>
                                    @foreach($subCategories as $subCategory)
                                    <tr>
                                        <td>{{ $subCategory->id }}</td>
                                        <td>{{ $subCategory->name }}</td>
                                        <td>{{ $subCategory->category->name }}</td>
                                        <td>@if($subCategory->offercategory){{ $subCategory->offercategory->name }}@endif</td>
                                        <td>{{ $subCategory->slug }}</td>
                                        <td>
                                            @if ($subCategory->status == 1)
                                            <div class="badge bg-success">Active</div>
                                            @else
                                            <div class="badge bg-danger">Inactive</div>
                                            @endif
                                        </td>
                                        <td>
                                            @if($subCategory->filters->isNotEmpty())
                                                <ul>
                                                    @foreach($subCategory->filters as $filter)
                                                        <li>{{ $filter->name }}</li> <!-- Adjust according to your filter model -->
                                                    @endforeach
                                                </ul>
                                            @else
                                                <span>No filters</span>
                                            @endif
                                        </td>
                                        <td>
                                            <a href="{{ route('admin.subcategory.edit', $subCategory->id) }}" class="btn btn-warning"><i class="fas fa-edit"></i></a>
                                            <form action="{{ route('admin.subcategory.destroy', $subCategory) }}" method="POST" style="display: inline;">
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
   $('#subcategory-datatable').DataTable({
    processing: true,
    serverSide: true,
    ajax: '{{ route('admin.subcategory.data') }}',
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
      data: 'category',
      name: 'category'
     },
     {
      data: 'offertype',
      name: 'offertype'
     },
     {
      data: 'slug',
      name: 'slug'
     },
     {
      data: 'status',
      name: 'status'
     },
     {
      data: 'filter',
      name: 'filter'
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
