@extends('layouts.backend.app')

@section('content')
<style>
    lable{
        margin-right:10px;
    }
</style>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>View Seller</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Dashboard</li>
                        <li class="breadcrumb-item active">View Seller</li>
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
                            <h3 class="card-title">View Seller Detail</h3>
                        </div>
                        <!-- form start -->
                        <form action="{{ route('admin.seller.update', $seller_data->id) }}" method="POST">
                            @csrf
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12 d-flex">
                                        <div class="col-md-3 d-flex">
                                            <lable><b>Name: </b></lable>
                                            <p> {{$seller_data->full_name}}</p>
                                        </div>

                                        <div class="col-md-3 d-flex">
                                            <lable><b>Email: </b></lable>
                                            <p> {{$seller_data->email}}</p>
                                        </div>

                                        <div class="col-md-3 d-flex">
                                            <lable><b>Country: </b></lable>
                                            <p> {{$seller_data->country}}</p>
                                        </div>

                                        <div class="col-md-3 d-flex">
                                            <lable><b>DOB: </b></lable>
                                            <p> {{$seller_data->dob}}</p>
                                        </div>

                                    </div>

                                    <div class="col-md-12 d-flex">
                                        <div class="col-md-3 d-flex">
                                            <lable><b>Country Code: </b></lable>
                                            <p> {{$seller_data->country_code}}</p>
                                        </div>

                                        <div class="col-md-3 d-flex">
                                            <lable><b>Phone No.: </b></lable>
                                            <p> {{$seller_data->phone_number}}</p>
                                        </div>

                                        <div class="col-md-3 d-flex">
                                            <lable><b>Product: </b></lable>
                                            <p> {{$seller_data->games_products}}</p>
                                        </div>

                                        <div class="col-md-3 d-flex">
                                            <lable><b>Info: </b></lable>
                                            <p> {{$seller_data->other_info}}</p>
                                        </div>

                                    </div>

                                    <div class="col-md-12 d-flex">
                                        <div class="col-md-3 d-flex">
                                            <lable><b>Selling Elsewhere: </b></lable>
                                            <p> @if($seller_data->selling_elsewhere == 0)
                                                No
                                                @else
                                                Yes
                                                @endif
                                            </p>
                                        </div>

                                        

                                    </div>

                                    <div class="col-md-12 d-flex">
                                        <div class="col-md-3 d-flex">
                                            <lable><b>Status: </b></lable>
                                            <select name="status" class="form-control" id="status">
                                                <option value="1" @if($seller_data->status == 1) selected @endif>Active</option>
                                                <option value="0" @if($seller_data->status == 0) selected @endif>Deactive</option>
                                            </select>
                                        </div>

                                        

                                    </div>
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
