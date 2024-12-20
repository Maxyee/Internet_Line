@extends('layouts.front')
@section('meta')
  <title> প্রাইভেসি অ্যান্ড পলিসি </title>
@endsection
@section('content')
@php
$setting=DB::table('settings')->first();
@endphp

    <!-- packages section start -->
    <div class="career-2" style="padding-bottom: 20px;">
        <div class="row">
          <div class="col-md-12">
            <div class="career-2-wrapper">
              <h5>ট্রামস অ্যান্ড কন্ডিশন</h5>
              <p>{!! $setting->privacy ??'' !!}</p>
            </div>
          </div>
        </div>
     </div>
    </div>
    <!-- packages section end -->

@endsection