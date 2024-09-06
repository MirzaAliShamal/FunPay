@extends('layouts.backend.app')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Sub-Category</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">Add Sub-Category</li>
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
                            <h3 class="card-title">Create Sub-Category</h3>
                        </div>
                        <!-- form start -->
                        <form action="{{ route('admin.subcategory.store') }}" method="POST">
                            @csrf
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="category_id">Category</label>
                                    <select name="category_id" id="category_id" class="form-control select2bs4">
                                        <option value="">Select Category</option>
                                        @foreach($categories as $category)
                                            <option value="{{ $category->id }}">
                                                {{ $category->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger">{{ $errors->first('category_id') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="category_id">Offer Type</label>
                                    <select name="offer_category_id" id="offer_category_id" class="form-control select2bs4">
                                        <option value="">Select Offer</option>
                                        @foreach($offer_categories as $offer)
                                            <option value="{{ $offer->id }}">
                                                {{ $offer->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger">{{ $errors->first('category_id') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="name">Sub Category Name</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="{{ old('name') }}">
                                    <span class="text-danger">{{ $errors->first('name') }}</span>
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
