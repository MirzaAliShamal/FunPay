@extends('layouts.backend.app')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit Sub-Category</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">Edit Sub-Category</li>
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
                            <h3 class="card-title">Update Sub-Category</h3>
                        </div>
                        <!-- form start -->
                        <form action="{{ route('admin.subcategory.update', $subCategory->id) }}" method="POST">
                            @csrf
                            @method('PUT')
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="category_id">Category</label>
                                    <select name="category_id" id="category_id" class="form-control select2bs4">
                                        <option value="">Select Category</option>
                                        @foreach($categories as $category)
                                            <option value="{{ $category->id }}" {{ $subCategory->category_id == $category->id ? 'selected' : '' }}>
                                                {{ $category->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger">{{ $errors->first('category_id') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="filters">Filters</label>
                                    <select name="filters[]" id="filters" class="form-control select2bs4" multiple>
                                        @foreach($filters as $filter)
                                            <option value="{{ $filter->id }}" {{ $subCategory->filters->contains($filter->id) ? 'selected' : '' }}>
                                                {{ $filter->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger">{{ $errors->first('filters') }}</span>
                                </div>


                                <div class="form-group">
                                    <label for="category_id">Offer Type</label>
                                    <select name="offer_category_id" id="offer_category_id" class="form-control select2bs4">
                                        <option value="">Select Offer</option>
                                        @foreach($offer_categories as $offer)
                                            <option value="{{ $offer->id }}" {{ $subCategory->offer_category_id == $offer->id ? 'selected' : '' }}>
                                                {{ $offer->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <span class="text-danger">{{ $errors->first('category_id') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="name">Sub-Category Name</label>
                                    <input type="text" class="form-control" id="name" name="name" onblur="creat_link_product()" placeholder="Enter Name" value="{{ old('name', $subCategory->name) }}">
                                    <span class="text-danger">{{ $errors->first('name') }}</span>
                                </div>

                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <select name="status" class="form-control select2bs4" style="width: 100%;">
                                        <option value="1" {{ $subCategory->status == 1 ? 'selected' : '' }}>Active</option>
                                        <option value="0" {{ $subCategory->status == 0 ? 'selected' : '' }}>Inactive</option>
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
