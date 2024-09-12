@extends('layouts.backend.app')

@section('content')

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <h1 class="m-0">Create Filter</h1>
        </div>
    </div>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Filter Details</h3>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('filters.store') }}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label for="name">Name:</label>
                                    <input type="text" name="name" id="name" class="form-control" placeholder="Enter filter name" required>
                                </div>
                                <div class="form-group">
                                    <label for="type">Type:</label>
                                    <select name="type" id="type" class="form-control" required>
                                        <option value="">Select filter type</option>
                                        <option value="text">Text</option>
                                        <option value="textarea">Textarea</option>
                                        <option value="dropdown">Dropdown</option>
                                        <option value="checkbox">Checkbox</option>
                                        <option value="radio">Radio Button</option>
                                        <option value="number">Number</option>
                                        <option value="date">Date</option>
                                        <option value="email">Email</option>
                                        <option value="url">URL</option>
                                    </select>
                                </div>
                                <div class="form-group" id="options-group" style="display: none;">
                                    <label for="options">Options (comma separated for dropdown, checkbox, radio):</label>
                                    <input type="text" name="options" id="options" class="form-control" placeholder="e.g. Option1, Option2, Option3">
                                    <small class="form-text text-muted">For dropdown, checkbox, or radio types.</small>
                                </div>
                                <div class="form-group">
                                    <label for="description">Description:</label>
                                    <textarea name="description" id="description" class="form-control" rows="3" placeholder="Enter a brief description (optional)"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Create</button>
                                <a href="{{ route('filters.index') }}" class="btn btn-secondary">Cancel</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@section('scripts')
<script>
    document.getElementById('type').addEventListener('change', function() {
        const optionsGroup = document.getElementById('options-group');
        if (this.value === 'dropdown' || this.value === 'checkbox' || this.value === 'radio') {
            optionsGroup.style.display = 'block';
        } else {
            optionsGroup.style.display = 'none';
        }
    });
</script>
@endsection

@endsection
