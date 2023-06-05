@extends('layouts.frontend.app')
@section('title','Image Gallery')
@push('css')
@endpush
@section('content')
<div class="row">
    <div class="card">
        <div class="col-12 ">
            <h5 class="card-header">Image Gallery
                <a href="{{route('user.image.create')}}" class="btn btn-primary">Add More</a>
            </h5>

        </div>
        <div class="col-12" id="app">
            <image-gallery></image-gallery>
        </div>
    </div>
</div>
@endsection