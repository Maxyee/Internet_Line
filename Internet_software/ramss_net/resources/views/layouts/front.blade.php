@php
	$category=DB::table('categories')->orderBy('id','ASC')->get();
	$seo=DB::table('seos')->first();
	$social=DB::table('socials')->first();
	$horizontal1=DB::table('ads')->where('type',2)->first();
	$setting=DB::table('settings')->first();
@endphp
<!doctype html>
<html class="no-js" lang="zxx">
  <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    
        <meta name="author" content="{{ $seo->meta_author ??'' }}">
        <meta name="keyword" content="{{ $seo->meta_keyword ??''}}">
        <meta name="description" content="{{ $seo->meta_description ??''}}">
        <meta name="google-verification" content="{{ $seo->google_verification ??''}}">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        @yield('meta')
     
        <title>{{ $seo->meta_title }}</title>
         
     <link rel="icon" href="{{ asset($setting->favicon ??'') }}">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Bengali:wght@100;200;300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{ asset('public/frontend/css/bootstrap.min.css') }}">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="{{ asset('public/frontend/css/font-awesome.min.css') }}">
    <!-- Slicknav -->
    <link rel="stylesheet" href="{{ asset('public/frontend/css/slicknav.min.css') }}">
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="{{ asset('public/frontend/css/owl.carousel.css') }}">
    <link rel="stylesheet" href="{{ asset('public/frontend/css/owl.theme.css') }}">
    <link rel="stylesheet" href="{{ asset('public/frontend/css/owl.transitions.css') }}">
    <!-- Datepicker CSS -->
    <link rel="stylesheet" href="{{ asset('public/frontend/css/datepicker.css') }}">
    <!-- Lightbox CSS -->
    <link rel="stylesheet" href="{{ asset('public/frontend/css/simple-lightbox.min.css') }}">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="{{ asset('public/frontend/css/animate.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/frontend/css/magnific-popup.min.css') }}">
    <!-- Shadhin CSS -->
    <link rel="stylesheet" href="{{ asset('public/frontend/css/normalize.css') }}">
    <link rel="stylesheet" href="{{ asset('public/frontend/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('public/frontend/css/responsive.css') }}">
   <!-- Google Tag Manager -->
  </head>
  <body>

<!-- ================================= Header Here with topbar ================================= -->
<!-- Header Area -->
    <header class="header">
      <!-- Topbar -->
      <div class="topbar">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 col-md-5">
              <!-- Contact -->
              <ul class="top-contact" style="float:left;">
                 <!-- <li><i class="fa fa-envelope"></i>sales@shadhinwifi.com</li> -->
              </ul>
              <!-- End Contact -->
            </div>
            <div class="col-lg-6 col-md-7">
              <!-- Top Contact -->
              <ul class="top-contact">
                <li><i class="fa fa-phone"></i>{{ $setting->phone_bn ??''}} , {{ $setting->phone_en ??''}}</li>
              </ul>
              <!-- End Top Contact -->
            </div>
          </div>
        </div>
      </div>
      <!-- End Topbar -->
      <!-- Header Inner -->
      <div class="header-inner">
        <div class="container">
          <div class="inner">
            <div class="row">
              <div class="col-lg-5 col-md-5 col-12">
                <!-- Main Menu -->
                <div class="main-menu">
                  <nav class="navigation">
                    <ul class="nav menu">
					<li><a href="{{ URL::to('/') }}"><i class="fa fa-home" aria-hidden="true"></i>
 হোম</a></li>

                      <li><a href="{{ $setting->tarif_link ??''}}">বিটিআরসি ট্যারিফ প্ল্যান</a></li>
                      <li><a href="{{ URL::to('/about') }}">আমাদের পরিচিতি</a></li>
                    </ul>
                  </nav>
                </div>
                <!--/ End Main Menu -->
              </div>
              <div class="col-lg-2 col-md-2 col-12">
                <div class="mobile-navigation">
                  <!-- Start Logo -->
                  <div class="logo">
<a href="{{ URL::to('/') }}"><img src="{{ asset($setting->logo ??'') }}" /></a>
                  </div>
                  <!-- End Logo -->
                  <!-- Mobile Nav -->
                  <div class="mobile-nav"></div>
                  <!-- End Mobile Nav -->
                </div>
              </div>
              <div class="col-lg-5 col-md-5 col-12">
                <div class="main-menu">
                  <nav class="navigation">
                    <ul class="nav">
                      <div class="get-quote">
                        <a href="{{ $setting->ftp_link ??''}}" class="btn">আমাদের FTP সার্ভার </a>
						<a href="{{ $setting->apply_link ??''}}" class="btn">সংযোগ নিন</a>
                      </div>
                    </ul>
                  </nav>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
      <!--/ End Header Inner -->
<!-- ======================================= Main Part Loaded ======================================= -->
  <!-- third header Inner -->
  <div class="header-inner1">
    <div class="container">
      <div class="inner">
        <div class="row">
          <div class="offset-md-3 col-lg-6 col-md-6 col-12">
            <!-- Main Menu -->
            <div class="main-menu" style="display: flex; justify-content: center;">
              <nav class="navigation">
                <ul class="nav">
                  <li><a href="{{ URL::to('/package') }}" style="padding: 10px 0;">প্যাকেজ</i></a></li>
                  <li><a href="{{ URL::to('/bill') }}" style="padding: 10px 0;">বিল পরিশোধ</a></li>
                  <li><a href="{{ URL::to('/terms') }}" style="padding: 10px 0;">ট্রামস অ্যান্ড কন্ডিশন</a></li>
                  <li><a href="{{ URL::to('/privacy') }}" style="padding: 10px 0;">প্রাইভেসি অ্যান্ড পলিসি</a></li>
                </ul>
              </nav>
            </div>
            <!--/ End Main Menu -->
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--/ End third header Inner -->
</header>
<!-- End Header Area -->
<!-- ---------------////////////////////////// -->




        @yield('content')





<!-- ============================================ Footer ============================================ -->
<!-- Footer Area -->
    <footer id="footer" class="footer ">
      <!-- Footer Top -->
      <div class="footer-top">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="single-footer">
                <img src="{{ asset($setting->mobilelogo ??'') }}" class="img-fluid">
                <p>{!! $setting->footer_description ??'' !!}</p>
                <h3 style="margin-top: 10px;">হটলাইন:</h3>
                <h3>{{ $setting->phone_bn ??''}}</h3>
                <h3>{{ $setting->phone_en ??''}}</h3>
                <!-- <h3 style="margin-top: 10px;">office@shadhinwifi.com</h3> -->
                <p style="margin-top: 10px;">©{{ $seo->meta_title }} | <span style="color: white;">সকল কারিগরি সহযোগিতায়ঃ <a href="https://www.elitedesign.com.bd" target="_blank"><span style="color: white;">এলিট ডিজাইন</span></a></span></p>
              </div>
            </div>
            <div class="col-md-2">
              <div class="single-footer f-link">
                <h2>ব্যক্তিগত</h2>
                <ul>
                  <li><a href="{{ URL::to('/package') }}">প্যাকেজ</a></li>
                  <li><a href="{{ URL::to('/bill') }}">বিল পরিশোধ</a></li>  
                  <li><a target="_blank" href="{{ $setting->tarif_link ??''}}">বিটিআরসি ট্যারিফ প্ল্যান</a></li>  
                </ul>
              </div>
            </div>
            <div class="col-md-2">
              <div class="single-footer f-link">
                <h2>ব্যবসায়িক</h2>
                <ul>
                  <!-- <li><a href="https://www.shadhinwifi.com/product">প্রোডাক্ট</a></li> -->
                  <li><a href="#">সল্যুশন</a></li>
                  <li><a href="#">স্মার্ট বিসনেজ সেন্টার</a></li>
                  <li><a href="#">নেটওয়ার্ক সহযোগী ফর্ম</a></li>
                </ul>
              </div>
            </div>
            <div class="col-md-2">
              <div class="single-footer f-link">
                <h2>গুরুত্বপূর্ণ লিংক</h2>
                <ul>
                  <li><a href="about.html">আমাদের পরিচিতি</a></li>
                  <li><a href="{{ $setting->app_download ??''}}" class="btn1" style="color:#0C8241;text-align: center;">আমাদের অ্যাপ</a></li>  
                  <li><a href="{{ $setting->apply_link ??''}}" class="btn1" style="color:#0C8241;text-align: center;">সংযোগ নিন</a></li> 
                </ul>
              </div>
            </div>
            <div class="col-md-3">
              <div class="single-footer">
                <h2>সোশ্যাল মিডিয়া</h2>
                <!-- Social -->
                <ul class="social">
                  <li><a href="{{ $social->facebook ??''}}"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="{{ $social->instagram ??''}}"><i class="fa fa-instagram"></i></a></li>
                  <li><a href="{{ $social->linkedin ??''}}"><i class="fa fa-linkedin"></i></a></li>
                  <li><a href="{{ $social->youtube ??''}}"><i class="fa fa-youtube-play"></i></a></li>
                  <li><a href="{{ $social->twitter ??''}}"><i class="fa fa-twitter"></i></a></li>
                </ul>
                <!-- End Social -->
                <h4>আমাদের ঠিকানা</h4>
<!--                 <form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
                  <input name="email" placeholder="Email Address" class="common-input" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Your email address'" required="" type="email">
                  <button class="button"><i class="fa fa-paper-plane"></i></button>
                </form> -->
                <p>{!! $setting->address_bn ??'' !!}</p>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="offset-md-4 col-md-4">
              <div class="copyright">
                <ul>
                  <li><h4>পেমেন্ট মেথড</h4></li>
                  <li><img src="{{ asset('public/frontend/img/bkash.png') }}"></li>
                  <li><img src="{{ asset('public/frontend/img/nagad.png') }}"></li>
                  <li><img src="{{ asset('public/frontend/img/rocket.png') }}"></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--/ End Footer Top -->
    </footer>
    <!--/ End Footer Area -->
    <!-- jquery Min JS -->
    <script src="{{ asset('public/frontend/js/jquery-3.6.1.min.js') }}"></script>
    <!-- jquery Migrate JS -->
    <script src="{{ asset('public/frontend/js/jquery-migrate-3.0.0.js') }}"></script>
    <!-- jquery Ui JS -->
    <script src="{{ asset('public/frontend/js/jquery-ui.min.js') }}"></script>
    <!-- Jquery Nav JS -->
    <script src="{{ asset('public/frontend/js/jquery.nav.js') }}"></script>
    <!-- ScrollUp JS -->
    <script src="{{ asset('public/frontend/js/jquery.scrollUp.min.js') }}"></script>
    <!-- counterup JS -->
    <script src="{{ asset('public/frontend/js/jquery.counterup.min.js') }}"></script>
    <!-- Popper JS -->
    <script src="{{ asset('public/frontend/js/popper.min.js') }}"></script>
    <!-- Bootstrap Datepicker JS -->
    <script src="{{ asset('public/frontend/js/bootstrap-datepicker.js') }}"></script>
    <!-- Lightbox JS -->
    <script src="{{ asset('public/frontend/js/simple-lightbox.jquery.min.js') }}"></script>
    <!-- Slicknav JS -->
    <script src="{{ asset('public/frontend/js/slicknav.min.js') }}"></script>
    <!-- Owl Carousel JS -->
    <script src="{{ asset('public/frontend/js/owl.carousel.js') }}"></script>
    <script src="{{ asset('public/frontend/js/owl.carousel.min.js') }}"></script>
    <!-- Wow JS -->
    <script src="{{ asset('public/frontend/js/wow.min.js') }}"></script>
    <!-- Magnific Popup JS -->
    <script src="{{ asset('public/frontend/js/jquery.magnific-popup.min.js') }}"></script>
    <!-- Counter Up JS -->
    <script src="{{ asset('public/frontend/js/waypoints.min.js') }}"></script>
    <!-- Bootstrap JS -->
    <script src="{{ asset('public/frontend/js/bootstrap.min.js') }}"></script>
    <!-- Main JS -->
    <script src="{{ asset('public/frontend/js/main-old-1.js') }}"></script>
    <!-- Meta Pixel Code -->
    <script>
    !function(f,b,e,v,n,t,s)
    {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
    n.callMethod.apply(n,arguments):n.queue.push(arguments)};
    if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
    n.queue=[];t=b.createElement(e);t.async=!0;
    t.src=v;s=b.getElementsByTagName(e)[0];
    s.parentNode.insertBefore(t,s)}(window, document,'script',
    '../connect.facebook.net/en_US/fbevents.js');
    fbq('init', '1042547330369238');
    fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
    src="https://www.facebook.com/tr?id=1042547330369238&amp;ev=PageView&amp;noscript=1"
    /></noscript>
    <!-- End Meta Pixel Code -->
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-163780810-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-163780810-1');
    </script>
    
    <!-- Messenger Chat plugin Code -->
    <div id="fb-root"></div>

    <!-- Your Chat plugin code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "109770630684294");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v15.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = '../connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>
  </body>
</html>
