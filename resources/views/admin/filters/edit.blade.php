@extends('layouts.backend.app')

@section('content')

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <h1 class="m-0">Edit Filter</h1>

            <div class="card mt-3">
                <div class="card-header">
                    <h3 class="card-title">Update Filter Details</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('filters.update', $filter) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" name="name" id="name" class="form-control" value="{{ $filter->name }}" required>
                        </div>
                        <div class="form-group">
                            <label for="type">Type:</label>
                            <select name="type" id="type" class="form-control" required>
                                <option value="text" {{ $filter->type == 'text' ? 'selected' : '' }}>Text</option>
                                <option value="textarea" {{ $filter->type == 'textarea' ? 'selected' : '' }}>Textarea</option>
                                <option value="dropdown" {{ $filter->type == 'dropdown' ? 'selected' : '' }}>Dropdown</option>
                                <option value="checkbox" {{ $filter->type == 'checkbox' ? 'selected' : '' }}>Checkbox</option>
                                <option value="radio" {{ $filter->type == 'radio' ? 'selected' : '' }}>Radio Button</option>
                                <option value="number" {{ $filter->type == 'number' ? 'selected' : '' }}>Number</option>
                                <option value="date" {{ $filter->type == 'date' ? 'selected' : '' }}>Date</option>
                                <option value="email" {{ $filter->type == 'email' ? 'selected' : '' }}>Email</option>
                                <option value="url" {{ $filter->type == 'url' ? 'selected' : '' }}>URL</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                        <a href="{{ route('filters.index') }}" class="btn btn-secondary">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
