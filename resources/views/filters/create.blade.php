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
                <div class="col-md-12">
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
                                    @error('name')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="type">Type:</label>
                                    <select name="type" id="type" class="form-control" required>
                                        <option value="">Select filter type</option>
                                        <option value="text">Text</option>
                                        <option value="textarea">Textarea</option>
                                        <option value="dropdown">Dropdown</option>
                                        <option value="checkbox">Checkbox</option>
                                        <option value="radio">Radio</option>
                                        <option value="button">Button</option>
                                        <option value="date">Date</option>
                                        <option value="file">File</option>
                                        {{-- <option value="range">Range</option> --}}
                                    </select>
                                    @error('type')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group" id="options-group" style="display: none;">
                                    <label for="options">Options (comma separated):</label>
                                    <input type="text" name="options" id="options" class="form-control" placeholder="e.g. Option1, Option2">
                                    <small class="form-text text-muted">For dropdown, checkbox, or radio types.</small>
                                    @error('options')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
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
@endsection

@section('script')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const typeSelect = document.getElementById('type');
        const optionsGroup = document.getElementById('options-group');

        typeSelect.addEventListener('change', function() {
            const selectedType = this.value;
            if (['dropdown', 'checkbox', 'radio'].includes(selectedType)) {
                optionsGroup.style.display = 'block';
            } else {
                optionsGroup.style.display = 'none';
                document.getElementById('options').value = ''; // Clear the options input
            }
        });
    });
</script>
@endsection
