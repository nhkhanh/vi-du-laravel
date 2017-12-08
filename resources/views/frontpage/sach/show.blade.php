@extends('frontpage.layouts.frontpage')
@section('content')
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1>THÔNG TIN SÁCH</h1>

                    <div>Tên sách: </div><div>{{$sach->ten_sach}}</div>

                </div>
            </div>
        </div>
    </section>
@endsection