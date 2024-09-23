@extends('layouts.backend.app')

@section('content')
<style>
    lable {
        margin-right: 10px;
    }
</style>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>View Buyer</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">View Buyer</li>
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
                            <h3 class="card-title">View Buyer Detail</h3>
                        </div>
                        <!-- form start -->
                        <form action="{{ route('admin.buyer.update', $buyer_data->id) }}" method="POST">
                            @csrf
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12 d-flex">
                                        <div class="col-md-3 d-flex">
                                            <lable><b>Name: </b></lable>
                                            <p> {{$buyer_data->name}}</p>
                                        </div>
                                        <div class="col-md-3 d-flex">
                                            <lable><b>Email: </b></lable>
                                            <p> {{$buyer_data->email}}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-body -->


                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection
