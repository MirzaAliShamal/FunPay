@extends('layouts.backend.app')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Offer Field</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">Add Offer Field</li>
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
                            <h3 class="card-title">Create Offer Field</h3>
                        </div>
                        <!-- form start -->
                        <form action="{{ route('admin.offerfield.store') }}" method="POST">
                            @csrf
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="category_id">Category</label>
                                    <select name="offer_category_id" required id="offer_category_id" class="form-control select2bs4">
                                        <option value="">Select Category</option>
                                        @foreach($module_data as $data)
                                            <option value="{{ $data->id }}">
                                                {{ $data->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger">{{ $errors->first('offer_category_id') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="status">Type</label>
                                    <select name="type" required class="form-control select2bs4" style="width: 100%;">
                                        <option value="1">Input Field</option>
                                        <option value="2">Dropdown</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="name">Label</label>
                                    <input type="text" required class="form-control" id="label" name="label" placeholder="Enter Label Name">
                                    <span class="text-danger">{{ $errors->first('label') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="name">Values</label>
                                    <input type="text" class="form-control" id="values" name="values" placeholder="You can enter multiple values on comma saperation" >
                                    <span class="text-danger">{{ $errors->first('values') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <select name="status" class="form-control select2bs4" style="width: 100%;">
                                        <option value="1">Active</option>
                                        <option value="0">Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Create</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection
