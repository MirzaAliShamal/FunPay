@extends('layouts.backend.app')

@section('content')
<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <h1 class="m-0">Edit Filter</h1>
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
                            <form action="{{ route('filters.update', $filter->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="name">Name:</label>
                                    <input type="text" name="name" id="name" class="form-control" value="{{ old('name', $filter->name) }}" required>
                                    @error('name')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="type">Type:</label>
                                    <select name="type" id="type" class="form-control" required>
                                        <option value="">Select filter type</option>
                                        <option value="text" {{ $filter->type == 'text' ? 'selected' : '' }}>Text</option>
                                        <option value="textarea" {{ $filter->type == 'textarea' ? 'selected' : '' }}>Textarea</option>
                                        <option value="dropdown" {{ $filter->type == 'dropdown' ? 'selected' : '' }}>Dropdown</option>
                                        <option value="checkbox" {{ $filter->type == 'checkbox' ? 'selected' : '' }}>Checkbox</option>
                                        <option value="radio" {{ $filter->type == 'radio' ? 'selected' : '' }}>Radio Button</option>
                                        <option value="button" {{ $filter->type == 'button' ? 'selected' : '' }}>Button</option>
                                        <option value="date" {{ $filter->type == 'date' ? 'selected' : '' }}>Date</option>
                                        <option value="file" {{ $filter->type == 'file' ? 'selected' : '' }}>File</option>
                                        <option value="range" {{ $filter->type == 'range' ? 'selected' : '' }}>Range</option>
                                    </select>
                                    @error('type')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group" id="options-group" style="display: {{ in_array($filter->type, ['dropdown', 'checkbox', 'radio']) ? 'block' : 'none' }}">
                                    <label for="options">Options (comma separated):</label>
                                    <input type="text" name="options" id="options" class="form-control"
                                           value="{{ old('options', $filter->options ? $filter->options->pluck('name')->implode(', ') : '') }}">
                                    <small class="form-text text-muted">For dropdown, checkbox, or radio types.</small>
                                    @error('options')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>

                                <div class="form-group" id="range-group" style="display: {{ $filter->type == 'range' ? 'block' : 'none' }}">
                                    <label for="range">Range:</label>
                                    <input type="text" name="range" id="range" class="form-control" value="{{ old('range', $filter->range ?? '') }}">
                                    <small class="form-text text-muted">Specify the range values if applicable.</small>
                                    @error('range')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>

                                <button type="submit" class="btn btn-primary">Update</button>
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
    const rangeGroup = document.getElementById('range-group');

    typeSelect.addEventListener('change', function() {
        const selectedType = this.value;
        if (['dropdown', 'checkbox', 'radio'].includes(selectedType)) {
            optionsGroup.style.display = 'block';
            rangeGroup.style.display = 'none'; // Hide range input
        } else if (selectedType === 'range') {
            optionsGroup.style.display = 'none'; // Hide options input
            rangeGroup.style.display = 'block'; // Show range input
        } else {
            optionsGroup.style.display = 'none';
            rangeGroup.style.display = 'none'; // Hide both
        }
    });
});
</script>
@endsection
