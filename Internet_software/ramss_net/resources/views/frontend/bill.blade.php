@extends('layouts.front')
@section('content')
@php
	 $seo=DB::table('seos')->first();
	 
@endphp
 
 <div class="business-cover">
  <img src="public/frontend/img/billing-cover.png" alt="Shadhin Wi-Fi Billing">
</div>
<!--/ End Slider Area -->
<!-- Video Section Start -->
<section class="video">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="coverage_heading" style="margin:25px 5px 0;">
          <h4>{{ $seo->meta_title }} এর বিল পরিশোধ করতে <br>নিচের স্টেপগুলো অনুসরণ করুন</h4>
        </div>
      </div>
    </div>
    <div class="row">
				    @php
				$videobig=DB::table('videos')->where('type',1)->orderBy('id','DESC')->first();
				$videosmall=DB::table('videos')->where('type',0)->orderBy('id','DESC')->limit(5)->get();
				$videosmall2=DB::table('videos')->where('type',0)->orderBy('id','DESC')->limit(3)->get();
				@endphp	
	
	@foreach($videosmall2 as $row)
      <div class="col-md-4">
        <div class="video-wrapper" style="min-height: 280px;">
          <div class="video-thumbnail">
            <iframe width="100%" height="195" src="https://www.youtube.com/embed/{{  $row->embed_code ??''}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
          </div>
          <div class="video-headline">
            <h3>{{ $row->title ??''}}</h3>
          </div>
        </div>
      </div>
	  @endforeach
	  
	  
      
    </div>
  </div>
</section>
<!-- Gallery Section End -->


@endsection