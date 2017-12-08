<div class="mainmenu pull-left">
<ul class="nav navbar-nav collapse navbar-collapse">
    <li><a href="/" class="active">Trang chủ</a></li>
    <li class="dropdown"><a href="#">Cửa hàng<i class="fa fa-angle-down"></i></a>
        <ul role="menu" class="sub-menu">
            @foreach ($ds_the_loai as $the_loai)
                <li><a href="/sach?loai={{ $the_loai->id_loai }}">{{ $the_loai->ten_loai }}</a></li>
            @endforeach
        </ul>
    </li>
    <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
        <ul role="menu" class="sub-menu">
            <li><a href="blog.html">Blog List</a></li>
            <li><a href="blog-single.html">Blog Single</a></li>
        </ul>
    </li>
    <li><a href="404.html">404</a></li>
    <li><a href="contact-us.html">Contact</a></li>
</ul>
</div>
