@extends('layouts.backend.app')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit Offer Type</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">Edit Offer Type</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Update Offer Type</h3>
                        </div>
                        <!-- form start -->
                        <form action="{{ route('admin.offertype.update', $edit_data->id) }}" method="POST">
                            @csrf
                            @method('PUT')
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="category_id">Category</label>
                                    <select name="offer_category_id" id="offer_category_id" class="form-control select2bs4">
                                        <option value="">Select Category</option>
                                        @foreach($module_data as $data)
                                            <option value="{{ $data->id }}" {{ $edit_data->offer_category_id == $data->id ? 'selected' : '' }}>
                                                {{ $data->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger">{{ $errors->first('offer_category_id') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="{{ old('name', $edit_data->name) }}">
                                    <span class="text-danger">{{ $errors->first('name') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <select name="status" class="form-control select2bs4" style="width: 100%;">
                                        <option value="1" {{ $edit_data->status == 1 ? 'selected' : '' }}>Active</option>
                                        <option value="0" {{ $edit_data->status == 0 ? 'selected' : '' }}>Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection
