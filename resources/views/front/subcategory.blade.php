@extends('layouts.frontend.front')

@section('style')
<!-- Add any specific styles here -->
@endsection

@section('content')
<h1>{{ $subcategory->category->name }} - {{ $subcategory->name }}</h1>

<h2>Filters</h2>
<form method="GET" action="{{ route('subcatpage', $subcategory->slug) }}">
    @foreach ($subcategory->filters as $filter)
        <div class="form-check">
            <input class="form-check-input" type="checkbox" name="filters[]" value="{{ $filter->id }}" id="filter{{ $filter->id }}"
                {{ in_array($filter->id, request('filters', [])) ? 'checked' : '' }}>
            <label class="form-check-label" for="filter{{ $filter->id }}">
                {{ $filter->name }}
            </label>
        </div>
    @endforeach
    <button type="submit" class="btn btn-primary">Apply Filters</button>
</form>

<h2>Items</h2>
<div class="item-list">
    @foreach ($items as $item)
        <div class="item">
            <h3>{{ $item->name }}</h3>
            <p>{{ $item->description }}</p>
        </div>
    @endforeach

    @if ($items->isEmpty())
        <p>No items found for the selected filters.</p>
    @endif
</div>
@endsection

@section('script')
<!-- Add any specific scripts here -->
@endsection
