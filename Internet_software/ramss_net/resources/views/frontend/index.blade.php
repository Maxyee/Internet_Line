@extends('layouts.front')
@section('content')
@php
     $setting=DB::table('settings')->first();
	 $social=DB::table('socials')->first();
	 $seo=DB::table('seos')->first();
	 $post=DB::table('posts')->first();
	 
@endphp



        
 
 
<!-- Slider Area -->
<div class="slider">
  <div class="container">
    <div class="row">
      <div class="hero-slider">
        <!-- Start Single Slider -->
        <div class="single-slider">
          <div class="container">
            <div class="row">
              <div class="col-lg-4">
                <div class="text">
                  <h1>{{$setting->baner1_text ??''}}</h1>
                  <p>{{$setting->baner1short_text ??''}}</p>
                  <div class="button">
                    <a href="#" class="btn">আরো জানুন</a>
                  </div>
                </div>
              </div>
              <div class="col-lg-8">
                <div class="slider-image">
                  <img src="{{ asset($setting->baner1 ??'') }}" alt="smart-bangladesh-award">
                </div>
                <div class="slider-back"></div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Single Slider -->
        <!-- Start Single Slider -->
        <div class="single-slider">
          <div class="container">
            <div class="row">
              <div class="col-lg-4">
                <div class="text">
                  <h1>{{$setting->baner2_text ??''}}</h1>
                  <p>{{$setting->baner2short_text ??''}}</p>
                  <div class="button">
                    <a href="#" class="btn">আরো জানুন</a>
                  </div>
                </div>
              </div>
              <div class="col-lg-8">
                <div class="slider-image">
                  <img src="{{ asset($setting->baner2 ??'') }}" alt="broadband internet package for student">
                </div>
                <div class="slider-back"></div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Single Slider -->
        <!-- Start Single Slider -->
        <div class="single-slider">
          <div class="container">
            <div class="row">
              <div class="col-lg-4">
                <div class="text">
                  <h1>{{$setting->baner3_text ??''}}</h1>
                  <p>{{$setting->baner3short_text ??''}}</p>
                  <div class="button">
                    <a href="#" class="btn">আরো জানুন</a>
                  </div>
                </div>
              </div>
              <div class="col-lg-8">
                <div class="slider-image">
                  <img src="{{ asset($setting->baner3 ??'') }}" alt="broadband internet package fro freelancer">
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Start End Slider -->
      </div>
    </div>
  </div>
</div>
<!-- End Slider Area -->
<!-- iconic section start -->
<section class="iconic">
  <div class="container">
    <div class="row">
      <div class="offset-md-1 col-md-2 col-4">
        <div class="icon-wrapper">
          <a href="">
            <img src="public/frontend/img/icon/package_icon.png" alt="shadhin-wifi-package-icon">
            <h3>ইন্টারনেট প্যাকেজ</h3>
          </a>
        </div>
      </div>
      <div class="col-md-2 col-4">
        <div class="icon-wrapper">
          <a href="">
            <img src="public/frontend/img/icon/offer_icon.png" alt="shadhin-wifi-offer-icon">
            <h3>আমাদের সম্পর্কে</h3>
          </a>
        </div>
      </div>
      <div class="col-md-2 col-4">
        <div class="icon-wrapper">
          <a href="">
            <img src="public/frontend/img/icon/coverage_icon.png" alt="shadhin-wifi-coverage-icon">
            <h3>আমাদের কভারেজ</h3>
          </a>
        </div>
      </div>
      <div class="col-md-2 col-4">
        <div class="icon-wrapper">
          <a href="">
            <img src="public/frontend/img/icon/connection_icon.png" alt="shadhin-wifi-connection-icon">
            <h3>ইন্টারনেট সংযোগ</h3>
          </a>
        </div>
      </div>
      <div class="col-md-2 col-4">
        <div class="icon-wrapper">
          <a href="">
            <img src="public/frontend/img/icon/career_icon.png" alt="shadhin-wifi-career-icon">
            <h3>ক্যারিয়ার</h3>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- iconic section end -->
<!-- coverage section start -->
<div class="coverage">
  <div class="container coverage_wrapper">
    <div class="row">
      <div class="col-md-12">
        <div class="coverage_heading">
          <h4>আমাদের কভারেজ</h4>
          <!-- <img src="https://www.shadhinwifi.com/public/frontend/img/border.png"> -->
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-2 col-4">
        <div class="coverage_counter">
          <h4 class="counter">{{ $setting->counter1 ??''}}</h4>
          <h3>গ্রাম</h3>
        </div>
      </div>
      <div class="col-md-2 col-4">
        <div class="coverage_counter">
          <h4 class="counter">{{ $setting->counter2 ??''}}</h4>
          <h3>ইউনিয়ন</h3>
        </div>
      </div>
      <div class="col-md-2 col-4">
        <div class="coverage_counter">
          <h4 class="counter">{{ $setting->counter3 ??''}}</h4>
          <h3>পৌরসভা</h3>
        </div>
      </div>
      <div class="col-md-2 col-4">
        <div class="coverage_counter">
          <h4 class="counter">{{ $setting->counter4 ??''}}</h4>
          <h3>থানা</h3>
        </div>
      </div>
      <div class="col-md-2 col-4">
        <div class="coverage_counter">
          <h4 class="counter">{{ $setting->counter5 ??''}}</h4>
          <h3>জেলা</h3>
        </div>
      </div>
      <div class="col-md-2 col-4">
        <div class="coverage_counter">
          <h4 class="counter">{{ $setting->counter6 ??''}}</h4>
          <h3>বিভাগ</h3>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- coverage section End -->
<!-- packages section start -->
<div class="packages">
 <div class="container">
  <div class="row">
    <div class="col-md-12">
      <div class="coverage_heading">
        <h4>জনপ্রিয় প্যাকেজ</h4>
      </div>
    </div>
  </div>
  <div class="tav">
    <ul class="nav nav-tabs">
      <li><a class='active' data-toggle="tab" href="#wifi">আমাদেরসব থেকে জনপ্রিয় প্যাকেজ সমূহ</a></li>
    </ul>
  </div>
  
  
  
  <div class="tab-content">
    <div id="wifi" class="tab-pane active">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-12">
            <div class="owl-carousel package-slider">
			
			          					@php
					$firstcat=DB::table('categories')->first();
					$firstcat_1st_package=DB::table('posts')->where('cat_id',$firstcat->id)->where('firstpackage',1)->orderBy('id','DESC')->limit(1)->get();
					$firstcat_2nd_package=DB::table('posts')->where('cat_id',$firstcat->id)->where('seconpackage',1)->orderBy('id','DESC')->limit(1)->get();
					$firstcat_3rd_package=DB::table('posts')->where('cat_id',$firstcat->id)->where('thirdpackage',1)->orderBy('id','DESC')->limit(1)->get();
					@endphp
		  
			@foreach($firstcat_1st_package as $row)
              <!-- Start Single Testimonial -->
              <div class="single-package" style="text-align: center;">
                <img src="{{ asset($row->image ??'')}}" alt="{{ $row->title_bn ??'' }}">
                        <div class="get-quote" style="margin: 5px 0 15px 0;text-align: center;">
                  <a href="{{ $row->apply_link ??'' }}" class="btn">সংযোগ নিন</a>
                </div>
			  </div>
              <!-- End Single Testimonial -->
			  @endforeach
			  
			  @foreach($firstcat_2nd_package as $row)
              <!-- Start Single Testimonial -->
              <div class="single-package" style="text-align: center;">
                <img src="{{ asset($row->image ??'')}}" alt="{{ $row->title_bn ??'' }}">
                                   <div class="get-quote" style="margin: 5px 0 15px 0;text-align: center;">
                  <a href="{{ $row->apply_link ??'' }}" class="btn">সংযোগ নিন</a>
                </div>
			  </div>
              <!-- End Single Testimonial -->
			  @endforeach
			  
			  @foreach($firstcat_3rd_package as $row)
              <!-- Start Single Testimonial -->
              <div class="single-package" style="text-align: center;">
                <img src="{{ asset($row->image ??'')}}" alt="{{ $row->title_bn ??'' }}">
                                     <div class="get-quote" style="margin: 5px 0 15px 0;text-align: center;">
                  <a href="{{ $row->apply_link ??'' }}" class="btn">সংযোগ নিন</a>
                </div>
			 </div>
              <!-- End Single Testimonial -->
			  @endforeach
            </div>
			
			
			
			
            </div>
        </div>
      </div>
    </div>
   
    </div>
  </div>
 </div>
</div>
<!-- packages section end -->
<!-- packages section start -->
<div class="packages">
 <div class="container">
  <div class="row">
    <div class="col-md-12">
      <div class="coverage_heading">
        <h4>এন্টারটেইনমেন্ট</h4>
      </div>
    </div>
  </div>
  <div class="tav">
    <ul class="nav nav-tabs">
      <li><a class='active' data-toggle="tab" href="#tv">নিউজ</a></li>
      <li><a  data-toggle="tab" href="#movie">মুভি</a></li>
      <li><a  data-toggle="tab" href="#sports">স্পোর্টস</a></li>
    </ul>
  </div>
  <div class="tab-content">
    <div id="tv" class="tab-pane active">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-12">
            <div class="owl-carousel package-slider">
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/channel-24.jpg" alt="channel-24"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/dbc.jpg" alt="dbc"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/etv.jpg" alt="etv"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/gazi.jpg" alt="gazi"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/rtv.jpg" alt="rtv"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/somoy.jpg" alt="somoy"></a>
              </div>
              <!-- End Single Testimonial -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="movie" class="tab-pane fade">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-12">
            <div class="owl-carousel package-slider">
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/hbo.jpg" alt="hbo"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/Sonymax.jpg" alt="Sonymax"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/Sonyset.jpg" alt="Sonyset"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/star-movies.jpg" alt="star-movies"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/z-studio.jpg" alt="z-studio"></a>
              </div>
              <!-- End Single Testimonial -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="sports" class="tab-pane fade">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-12">
            <div class="owl-carousel package-slider">
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/gazi.jpg" alt="gazi"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/espn.jpg" alt="espn"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/sony-ten.jpg" alt="sony-ten"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/starsports.jpg" alt="starsports"></a>
              </div>
              <!-- End Single Testimonial -->
              <!-- Start Single Testimonial -->
              <div class="single-package">
                <a href="{{$setting->live_tv ??''}}"><img src="public/frontend/img/entertainment/ten_sports.jpg" alt="ten_sports"></a>
              </div>
              <!-- End Single Testimonial -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 </div>
</div>
<!-- packages section end -->
<!-- packages section start -->
<div class="packages">
 <div class="container">
  <div class="row">
    <div class="col-md-12">
      <div class="coverage_heading" style="margin:0px;">
        <h4>যে ৩টি কারনে আপনি</h4>
        <h4>{{ $seo->meta_title }}-এ যুক্ত হবেন</h4>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12 col-12">
      <div class="owl-carousel career-slider">
        <!-- Start Single Testimonial -->
        <div class="single-package" style="height:600px;border-radius: 5px;background: transparent;">
          <a href=""><img style="border-radius: 5px;" src="{{ asset($setting->reason1 ??'') }}" alt="first-image"></a>
        </div>
        <!-- End Single Testimonial -->
        <!-- Start Single Testimonial -->
        <div class="single-package" style="height:600px;border-radius: 5px;background: transparent;">
          <a href=""><img style="border-radius: 5px;" src="{{ asset($setting->reason2 ??'') }}" alt="second-image"></a>
        </div>
        <!-- End Single Testimonial -->
        <!-- Start Single Testimonial -->
        <div class="single-package" style="height:600px;border-radius: 5px;background: transparent;">
          <a href=""><img style="border-radius: 5px;" src="{{ asset($setting->reason3 ??'') }}" alt="third-image"></a>
        </div>
        <!-- End Single Testimonial -->
        
      </div>
    </div>
  </div>
 </div>
</div>
<!-- packages section end -->


<!-- Video Section Start -->
<section class="video">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="coverage_heading" style="margin: 5px 0;">
          <h4>স্পটলাইট ভিডিও</h4>
        </div>
      </div>
    </div>
   
			    @php
				$videobig=DB::table('videos')->where('type',1)->orderBy('id','DESC')->first();
				$videosmall=DB::table('videos')->where('type',0)->orderBy('id','DESC')->limit(5)->get();
				$videosmall2=DB::table('videos')->where('type',1)->orderBy('id','DESC')->limit(6)->get();
				@endphp	
   
    <div class="row">
	@foreach($videosmall2 as $row)
      <div class="col-md-4">
        <div class="video-wrapper">
          <div class="video-thumbnail">
            <iframe width="100%" height="250" src="https://www.youtube.com/embed/{{  $row->embed_code ??''}}?si=8tHtxrVYp8tLjaSV?rel=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
          </div>
          <div class="video-headline">
            <h3>{{ $row->title ??''}}</h3>
            <h4>{{ $seo->meta_title }}</h4>
          </div>
        </div>
      </div>
      		@endforeach
	  
</section>

<!-- Video Section End -->
<script type="text/javascript">
  // Automatic show popup after 2 seconds of page load
  const popup = document.querySelector('.popup');
  const close = document.querySelector('.close1');
   window.onload = function(){
    setTimeout(function(){
    popup.style.display = "block"

    }, 500)
   }
   close.addEventListener('click',() => {
    popup.style.display = "none";
   });
</script>
 
				@endsection