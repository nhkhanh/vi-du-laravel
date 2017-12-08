@extends('frontpage.layouts.frontpage')
@section('content')
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1>SỬA THÔNG TIN SÁCH</h1>
                    <form method="post" action="/sach/{{$sach->id_sach}}">
                        {{ csrf_field() }}
                        <input name="_method" type="hidden" value="PUT">
                        <input name="id_sach" type="hidden" value="{{$sach->id_sach}}">
                        <div>Tên sách</div><input name="ten_sach" value="{{$sach->ten_sach}}">
                        <input type="submit" value="Cập nhật">
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection