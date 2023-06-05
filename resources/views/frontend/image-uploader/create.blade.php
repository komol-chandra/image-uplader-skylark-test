@extends('layouts.frontend.app')
@section('title','Upload Image')
@push('css')
@endpush
@section('content')
    <div class="row">
        <div class="card mb-4">
            <h5 class="card-header">Upload Image</h5>
            <!-- Account -->
            <div class="card-body" id="app">
               <upload-image></upload-image>
            </div>
            <!-- /Account -->
        </div>
    </div>
@endsection
@push('js')
    <script src="{{asset('backend_assets/js/pages-account-settings-account.js')}}"></script>
@endpush
