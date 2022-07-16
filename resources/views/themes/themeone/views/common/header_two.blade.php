<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">

<style>
    .bg-primary {
    background-color: transparent !important;
}
.header-area .header-mini {
    background-color: #2e2f8c;
    padding-top: 0.3125rem;
    padding-bottom: 0.3125rem;
    min-height: 26px;
}
.header-maxi{
        background: rgba(255,200,30,0.95) !important;
    }
    .header-maxi>.container{
        margin: 0px !important;
    }
    .header-area .header-maxi {
    padding-top: 0rem;
    padding-bottom: 0rem;
}
    .hideClass{
        display:none;
    }
    .header-navi{
        background:#ad1e23 !important;
        padding:23px;
        width: 96%;
    margin: 0 2% 0 2%;
    }
    #header-area .header-maxi:before {
    background: url('public/images/header-img.png') repeat;
    width: 100%;
    height: 16px;
    display: block;
    content: '';
    position: relative;
    right: 0;
    left: 0;
    top: 95px;
    z-index: 3;
    animation: animatedBackground3 50s infinite linear;
    -ms-animation: animatedBackground3 50s infinite linear;
    -moz-animation: animatedBackground3 50s infinite linear;
    -webkit-animation: animatedBackground3 50s infinite linear;
}

.form-inline-head{
    top: 90px;
    right: 10px;
    left: auto;
    z-index: 3;
    margin-left: 110px;
}

.form-inline-head>input{
        width:85%;
    border: none;
    height: 50px;
    padding: 5px 50px 5px 10px;
    background: #fff;
    text-transform: capitalize;
    font-size: 14px;
    font-weight: 400;
    letter-spacing: 0.7px;
    color: #000;
    text-indent: 10px;
    outline: none;
    border-radius: 30px;
}
.form-inline-head>button{
       position: relative;
    border: none;
    right: 2.9rem;
    color: #fff;
    padding: 0;
    height: 40px;
    width: 40px;
    bottom: 0;
    outline: none;
    border-radius: 50%;
    background: #ad1e23;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
}
.header-area .header-navi .navbar .navbar-nav .nav-item {
    border-left: 1px solid #8f071d;
}
.block{
    display:none;
}

.type-location {
    font-size: 12px;
    height: 30px;
    border-radius: 0;
    padding: 0 10px 0 21px !important;
    width: 72%;
    color: #000;
}
.locate-me {
    width: 30px;
    margin-top: 0px !important;
    background: #fff;
    padding: 4px;
}
.check_availability {
        font-size: 12px;
    height: 30px;
    background: #165f30 !important;
    border: 0px;
    /* padding: 2px 0 1px 15px !important; */
    /* line-height: 22px !important; */
    /* border-left: 0px solid #d1d2d9 !important; */
    /* text-align: center; */
    /* width: 28%; */
    color: #fdfdfd !important;
}
.search-widget {
  
    right: 35px;
}
.location{
    
    cursor: pointer;
        color: #000;
    font-family: "Poppins", sans-serif;
    font-weight: 400;
    font-size: 16px;
    letter-spacing: 0.5px;
}
body{
    font-family: "Poppins", sans-serif;
}
.user-info .dropdown-menu {
    left: auto;
    right: 0;
    top: 40px;
    padding: 5px 7px;
    margin: 0;
    font-size: 14px;
}
.header-area .header-maxi .top-right-list .cart-header {
    float: right;
    margin: 0 35px;
}
.cart-header{
    background: #FFF;
    border-radius: 50%;
    width: 50px;
    height: 50px;
}
.header-area .header-maxi .top-right-list li > a .fa-cart-arrow-down {
    font-size: 30px;
    text-align: center;
    margin-top: 10px;
    margin-left: 10px;
}
.header-area .header-maxi .top-right-list li > a .fa {
    color: #ad1e23;
}
.header-area .header-maxi .top-right-list li > a .badge {
    background-color: #000000;
    position: absolute;
    left: -5px;
    height: 21px;
    min-width: 21px;
    font-size: 0.6875rem;
    color: #fff;
}
.dropdown-toggle::after {
    display: inline-block;
    margin-left: 0.255em;
    vertical-align: 0.255em;
    content: "";
    border-top: 0.3em solid;
    border-right: 0em solid transparent;
    border-bottom: 0;
    border-left: 0 solid transparent;
}
@-webkit-keyframes animatedBackground3 {
    from { background-position: 0 0; }
    to { background-position: -1000px 0; }
}
.header-area .header-navi .navbar .navbar-nav .nav-item .nav-link {
    font-size: 1.15rem;
    color: #fff;
    font-weight: 500;
    text-transform: unset;
}
#header-area{
        position: relative;
    z-index: 1;
}

.banner-single>.panel>.block{
    display:block;
}
.banner-content {
    background-color: #ffc501;
}
.banner-single .panel .block .title, .banner-single .panel .block p {
    color: #000;
    font-size: 0.875rem;
    margin-bottom: 0;
}
.banner-single .panel .fa {
    float: left;
    font-size: 35px;
    color: #000;
    margin-bottom: 0;
    margin-right: 15px;
}
.banner-single {
    
    border-right-color: #000;
}

.footer-content{
    background: #ad1e23;
}
.single-footer{
    color:#fff;
}
.footer-content .single-footer .links-list li a {
    color:#FFF;
}
.footer-content .single-footer .contact-list li a {
    color:#FFF;
}
.footer-content .single-footer .contact-list li a:hover {
    color: #ffc501;
}
.footer-content .single-footer .socials .list li a {
    background-color: #3032ae;
    color: #ffc501;
}
.footer-content .single-footer .contact-list li .fa{
    background: none;
    color: #fff;
}
.footer-content .single-footer .socials .list li a:hover {
    background-color: #ffc501;
    color: #fff;
}

.header-area .header-maxi .logo {
    font-family: 'Pasajero';
    color: #fff;
    font-size: 34px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    
     padding-top: 0px; 
    margin-left: 15px;
}

.wishlist-header{
        background: #FFF;
    border-radius: 50%;
    width: 50px;
    height: 50px
}
.fa-shopping-bag{
    text-align: center !important;
    margin-top: 10px !important;
    margin-left: 0px !important;
    font-size:25px !important;
}
.fa-heart{
    color: #FFF !important;
    margin-top: 10px !important;
    margin-left: 0px !important;
    font-size: 0.5rem !important;
}
.fa-stack {

    width: 3em !important;
}
@media (min-width: 1200px){
.header-maxi>.container {
    max-width: 100% !important;
}
}
</style>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title">Wow! It looks like you are ready to Give an Order here</h6>
        </div>
        <div class="modal-body">
		<div class="clearfix first-column">
		<input type="text" id="wdap_type_location" class="type-location " name="location" placeholder="Type Delivery Location (Landmark, Road or Area" autocomplete="off">
		
		<button name="check_availability" class="check_availability">Check Availability</button>
		</div>
        </div>
       <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" style="background: #ad1e23 !important;
    color: #FFF;">Close</button>
        </div>
      </div>
      
    </div>
  </div>
<header id="header-area" class="header-area bg-primary">
	<div class="header-mini hideClass" >
    	<div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                
                	<nav id="navbar_0" class="navbar navbar-expand-md navbar-dark navbar-0 p-0">
                    <!--     <div class="navbar-brand">
                            <select name="change_language" id="change_language" class="change-language">
                            @foreach($languages as $languages_data)                               
                                <option value="{{$languages_data->code}}" data-class="{{$languages_data->code}}" data-style="background-image: url({{asset('').$languages_data->image}});" @if(session('locale')==$languages_data->code) selected @endif>{{$languages_data->name}}</option>
                            @endforeach 
                            </select>
                        </div>
                     -->
                    
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_collapse_0" aria-controls="navbar_collapse_0" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbar_collapse_0">
                            <ul class="navbar-nav">
                                            
                                @if (Auth::guard('customer')->check())
                                    <li class="nav-item">
                                        <div class="nav-link">
                                            <span class="p-pic"><img src="{{asset('').auth()->guard('customer')->user()->customers_picture}}" alt="image"></span>@lang('website.Welcome')&nbsp;{{ auth()->guard('customer')->user()->customers_firstname }}&nbsp;{{ auth()->guard('customer')->user()->customers_lastname }}!
                                        </div>
                                    </li>
                                    <li class="nav-item"> <a href="{{ URL::to('/profile')}}" class="nav-link -before">@lang('website.Profile')</a> </li>
                                    <li class="nav-item"> <a href="{{ URL::to('/wishlist')}}" class="nav-link -before">@lang('website.Wishlist')</a> </li>
                                    <li class="nav-item"> <a href="{{ URL::to('/orders')}}" class="nav-link -before">@lang('website.Orders')</a> </li>
                                    
                                    <li class="nav-item"> <a href="{{ URL::to('/shipping-address')}}" class="nav-link -before">@lang('website.Shipping Address')</a> </li>
                                    <li class="nav-item"> <a href="{{ URL::to('/logout')}}" class="nav-link -before">@lang('website.Logout')</a> </li>
                                @else
                                    <li class="nav-item"><div class="nav-link">@lang('website.Welcome Guest!')</div></li>
                                    <li class="nav-item"> <a href="{{ URL::to('/login')}}" class="nav-link -before"><i class="fa fa-lock" aria-hidden="true"></i>&nbsp;@lang('website.Login/Register')</a> </li>
                                @endif
                            </ul> 
                        </div>   
                	</div>
                 </nav>
            </div>
        </div>
    </div>
    <div class="header-maxi">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12  col-sm-12 col-lg-3 spaceright-0">
                    <a href="{{ URL::to('/')}}" class="logo">
                    
                        <img src="{{asset('public/images/logo.png')}}" alt="Sampradaya Logo">
                    </a>
                </div>
                 <div class="col-12 col-sm-7 col-md-8 col-lg-5 px-0">      
                    <form class="form-inline-head" action="{{ URL::to('/shop')}}" method="get">
                    
                    <input type="search"  name="search" placeholder="@lang('website.Search entire store here')..." value="{{ app('request')->input('search') }}" aria-label="Search">
                    <button type="submit" class="btn btn-secondary"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
				</div>
                <div class="col-12 col-sm-5 col-md-4 col-lg-4 spaceleft-0">
                    <ul class="top-right-list">        
                        <!--<li class="phone-header">
                            <a>
                                <img class="img-fluid" src="{{asset('').'public/images/phone.png'}}" alt="icon">
                                <span class="block">
                                    <span class="title">@lang('website.Call Us Free'):</span>
                                    <span class="items">888 9436 6000</span>
                                </span>
                            </a>
                        </li>-->
                     

                        <div class="user-info dropdown js-dropdown">
                          <span class="account-logo expand-more location" data-toggle="dropdown" role="button">
                         
                         <i class="fa fa-user" aria-hidden="true"></i>&nbsp; My Account 
                        </span>
                        
                            <ul class="dropdown-menu">
                                @if (Auth::guard('customer')->check())
                                    
                                    <li class="nav-item"> <a href="{{ URL::to('/profile')}}" class="nav-link -before">@lang('website.Profile')</a> </li>
                                @else
                                <li>
                                      <a href="{{ URL::to('/login')}}" title="Log in to your customer account" rel="nofollow">
                                    <span>Sign in</span>
                                  </a>
                                `</li>
                                @endif
                            </ul>
                        </div>
                           <li class="wishlist-header hideClass" >
                            <a href="{{ URL::to('/wishlist')}}">
                                <span class="badge badge-secondary" id="wishlist-count">{{$result['commonContent']['totalWishList']}}</span>
                                <!--<img class="img-fluid" src="{{asset('').'public/images/wishlist_bag.png'}}" alt="icon">-->
                                
                                <span class="fa-stack fa-lg">
                                  <i class="fa fa-shopping-bag fa-stack-2x"></i>
                                  <i class="fa fa-heart fa-stack-2x"></i>
                                </span>
                            </a>
                        </li>
                         <li class="cart-header dropdown head-cart-content"></li>


                    </ul>
                </div>
            </div>
        </div>
    </div>
	<div class="header-navi">
    	<div class="container">
        	<div class="row align-items-center">
            
            	<div class="col-12">

                    <nav id="navbar_1" class="navbar navbar-expand-lg navbar-dark navbar-1 p-0 d-none d-lg-block">
                    
                        <div class="collapse navbar-collapse" id="navbar_collapse_1">
                        
                          <ul class="navbar-nav">
                          
                            <li class="nav-item ">
                            
                               <a class="nav-link" href="{{ URL::to('/shop')}}">
                                            Shop Products
                                        
                                        </a> 
                            </li>
                            <!--<li class="nav-item dropdown open">
                                <a href="" class="nav-link dropdown-toggle" id="navbarDropdownMenuLink01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">@lang('website.homePages')</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink01">
                                    <li> <a class="dropdown-item" href="{{ URL::to('/setStyle?style=one')}}" >@lang('website.homePage1')</a> </li>
                                    <li> <a class="dropdown-item" href="{{ URL::to('/setStyle?style=two')}}">@lang('website.homePage2')</a> </li>
                                    <li> <a class="dropdown-item" href="{{ URL::to('/setStyle?style=three')}}">@lang('website.homePage3')</a> </li>
                                </ul>
                            </li>-->
                            @foreach($result['commonContent']['categories'] as $categories_data)            
                                    <li class="nav-item">                
                                        <a class="nav-link" href="{{ URL::to('/shop')}}?category={{$categories_data->slug}}">
                                            {{$categories_data->name}} 
                                        
                                        </a> 
                                    </li>
                            @endforeach
                            
                          </ul>
                        </div>
                    </nav>
                    
                    <nav id="navbar_2" class="navbar navbar-expand-lg navbar-dark navbar-2 p-0 d-block d-lg-none">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_collapse_2" aria-controls="navbar_collapse_2" aria-expanded="false" aria-label="Toggle navigation"> @lang('website.Menu') </button>
                        
                        <div class="collapse navbar-collapse" id="navbar_collapse_2">
                        
                          
                            <ul class="navbar-nav">
                          
                            <li class="nav-item ">
                            
                               <a class="nav-link" href="{{ URL::to('/shop')}}">
                                            Shop Products
                                        
                                        </a> 
                            </li>
                            <!--
                                <li class="nav-item dropdown open">
                                    <a href="" class="nav-link dropdown-toggle" id="navbarDropdownMenuLink01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">@lang('website.homePages')</a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink01">
                                        <li> <a class="dropdown-item" href="{{ URL::to('/setStyle?style=one')}}" >@lang('website.homePage1')</a> </li>
                                        <li> <a class="dropdown-item" href="{{ URL::to('/setStyle?style=two')}}">@lang('website.homePage2')</a> </li>
                                        <li> <a class="dropdown-item" href="{{ URL::to('/setStyle?style=three')}}">@lang('website.homePage3')</a> </li>
                                    </ul>
                                </li>
                            -->
                             @foreach($result['commonContent']['categories'] as $categories_data)            
                                    <li class="nav-item">                
                                        <a class="nav-link" href="{{ URL::to('/shop')}}?category={{$categories_data->slug}}">
                                            {{$categories_data->name}} 
                                        
                                        </a> 
                                    </li>
                            @endforeach
                            
                          </ul>
                         
                        </div>
                    </nav>
				</div>
			</div>
		</div>
	</div>
</header>
