@extends('layouts.backend.app')

@section('content')

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <h1 class="m-0">Filters</h1>
            <a href="{{ route('filters.create') }}" class="btn btn-primary my-3">Create New Filter</a>

            @if (session('success'))
                <div class="alert alert-success">{{ session('success') }}</div>
            @endif

            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Filters List</h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Type</th>
                                <th>Options</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($filters as $filter)
                                <tr>
                                    <td>{{ $filter->name }}</td>
                                    <td>{{ $filter->type }}</td>
                                    <td>
                                        @if($filter->options->isNotEmpty())
                                            <ul>
                                                @foreach ($filter->options as $option)
                                                    <li>{{ $option->name }}</li>
                                                @endforeach
                                            </ul>
                                        @else
                                            No options available
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('filters.edit', $filter) }}" class="btn btn-warning btn-sm">Edit</a>
                                        <form action="{{ route('filters.destroy', $filter) }}" method="POST" style="display:inline;">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this filter?');">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
