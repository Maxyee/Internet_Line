@extends('layouts.app')
@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Website Settings</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
          <li class="breadcrumb-item active">Website Settings</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>



          <div class="card">
            <div class="card-header">
              <h3 class="card-title"> Website Settings</h3>
            
            </div>
            <!-- /.card-header -->
            <div class="card-body col-lg-12">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h4 class="modal-title">Website Setting</h4>
                       
                      </div>

                      <div class="modal-body">
                         <form action="{{ route('update.websitesetting',$setting->id) }}" method="Post" enctype="multipart/form-data">
                         	@csrf
                           <div class="form-group">
                             <label for="logo">Header Logo Black</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="logo" >
                           </div>
						                              <div class="form-group">
                             <label for="mobilelogo">Mobile Logo White</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="mobilelogo" >
                           </div>
						   <div class="form-group">
                             <label for="favicon">Favicon (64X64 PX))</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="favicon" >
                           </div>
						   
						   <div class="form-group">
                             <label for="package_image">Package Baner Images (1640X624 PX)</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="package_image" >
                           </div>
						   						                            
						   	<div class="form-group">
                             <label for="baner1">Baner 1 (1920X751 PX)</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="baner1" >
                           </div>
						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Baner Text 1</label>
                             <input type="text" class="form-control " value="{{ $setting->baner1_text }}" aria-describedby="emailHelp" name="baner1_text" required="">
                           </div>
						                               <div class="form-group">
                             <label for="exampleInputEmail1">Baner 1 Short Description</label>
                               <textarea class="textarea" placeholder="Place some text here" name="baner1short_text" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $setting->baner1short_text }}
                          </textarea>
                           </div>
						   	<div class="form-group">
                             <label for="baner2">Baner 2 (1920X751 PX)</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="baner2" >
                           </div>
						   						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Baner Text 2</label>
                             <input type="text" class="form-control " value="{{ $setting->baner2_text }}" aria-describedby="emailHelp" name="baner2_text" required="">
                           </div>
						   						                               <div class="form-group">
                             <label for="exampleInputEmail1">Baner 2 Short Description</label>
                               <textarea class="textarea" placeholder="Place some text here" name="baner2short_text" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $setting->baner2short_text }}
                          </textarea>
                           </div>

						   	<div class="form-group">
                             <label for="baner3">Baner 3 (1920X751 PX)</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="baner3" >
                           </div>
						   						   						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Baner Text 3</label>
                             <input type="text" class="form-control " value="{{ $setting->baner3_text }}" aria-describedby="emailHelp" name="baner3_text" required="">
                           </div>
						   						                               <div class="form-group">
                             <label for="exampleInputEmail1">Baner 3 Short Description</label>
                               <textarea class="textarea" placeholder="Place some text here" name="baner3short_text" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $setting->baner3short_text }}
                          </textarea>
                           </div>
						   					   	<div class="form-group">
                             <label for="reason1">Reason 1 Images (1920X1080 PX)</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="reason1" >
                           </div>
						  						   					   	<div class="form-group">
                             <label for="reason2">Reason 2 Images (1920X1080 PX)</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="reason2" >
                           </div>
						   						   					   	<div class="form-group">
                             <label for="reason3">Reason 3 Images (1920X1080 PX)</label>
                             <input type="file" class="form-control "  aria-describedby="emailHelp" name="reason3" >
                           </div>
						   						  
						   						   						   	<div class="form-group">
                             <label for="exampleInputEmail1">Footer Description</label>
                               <textarea class="textarea" placeholder="Place some text here" name="footer_description" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $setting->footer_description }}
                          </textarea>
                           </div>
						    <div class="form-group">
                             <label for="exampleInputEmail1">Facebook Page ID</label>
                             <input type="text" class="form-control " value="{{ $setting->facebookpage }}" aria-describedby="emailHelp" name="facebookpage" required="">
                           </div>
                           <div class="form-group">
                             <label for="exampleInputEmail1">Phone 1 Number</label>
                             <input type="text" class="form-control " value="{{ $setting->phone_bn }}" aria-describedby="emailHelp" name="phone_bn" required="">
                           </div>
                             <div class="form-group">
                             <label for="exampleInputEmail1">Phone 2 Number</label>
                             <input type="text" class="form-control " value="{{ $setting->phone_en }}" aria-describedby="emailHelp" name="phone_en" required="">
                           </div>
                           <div class="form-group">
                             <label for="exampleInputEmail1">Email</label>
                             <input type="text" class="form-control " value="{{ $setting->email }}" aria-describedby="emailHelp" name="email" required="">
                           </div>
                            <div class="form-group">
                             <label for="exampleInputEmail1">Addres</label>
                              <textarea class="textarea" placeholder="Place some text here" name="address_bn" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          	{{ $setting->address_bn }}
                          </textarea>
                           </div>
						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">Village Count</label>
                             <input type="text" class="form-control " value="{{ $setting->counter1 }}" aria-describedby="emailHelp" name="counter1" required="">
                           </div>
						   						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">Union Count</label>
                             <input type="text" class="form-control " value="{{ $setting->counter2 }}" aria-describedby="emailHelp" name="counter2" required="">
                           </div>
						   						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">Purohsoba Count</label>
                             <input type="text" class="form-control " value="{{ $setting->counter3 }}" aria-describedby="emailHelp" name="counter3" required="">
                           </div>
						                              <div class="form-group">
                             <label for="exampleInputEmail1">Thana Count</label>
                             <input type="text" class="form-control " value="{{ $setting->counter4 }}" aria-describedby="emailHelp" name="counter4" required="">
                           </div>
						   						   						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">Jela Count</label>
                             <input type="text" class="form-control " value="{{ $setting->counter5 }}" aria-describedby="emailHelp" name="counter5" required="">
                           </div>
						   						   						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">Bivag Count</label>
                             <input type="text" class="form-control " value="{{ $setting->counter6 }}" aria-describedby="emailHelp" name="counter6" required="">
                           </div>
						   						   						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">App Download Link</label>
                             <input type="text" class="form-control " value="{{ $setting->app_download }}" aria-describedby="emailHelp" name="app_download" required="">
                           </div>
						   						   						   						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">Live TV Link</label>
                             <input type="text" class="form-control " value="{{ $setting->live_tv }}" aria-describedby="emailHelp" name="live_tv" required="">
                           </div>
						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">APPly Link For Connection link</label>
                             <input type="text" class="form-control " value="{{ $setting->apply_link }}" aria-describedby="emailHelp" name="apply_link" required="">
                           </div>
						   						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">BTRC Tarif link</label>
                             <input type="text" class="form-control " value="{{ $setting->tarif_link }}" aria-describedby="emailHelp" name="tarif_link" required="">
                           </div>
						   						   						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">FTP Server Link</label>
                             <input type="text" class="form-control " value="{{ $setting->ftp_link }}" aria-describedby="emailHelp" name="ftp_link" required="">
                           </div>
						   						   						   						                              <div class="form-group">
                             <label for="exampleInputEmail1">About Video Embed Code Link</label>
                             <input type="text" class="form-control " value="{{ $setting->about_video_link }}" aria-describedby="emailHelp" name="about_video_link" required="">
                           </div>

						   	<div class="form-group">
                             <label for="exampleInputEmail1">Terms & Condition</label>
                               <textarea class="textarea" placeholder="Place some text here" name="terms" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $setting->terms }}
                          </textarea>
                           </div>
						   	<div class="form-group">
                             <label for="exampleInputEmail1">Privacy & Policy</label>
                               <textarea class="textarea" placeholder="Place some text here" name="privacy" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          		{{ $setting->privacy }}
                          </textarea>
                           </div>
						   
						      
                           <button type="submit" class="btn btn-success btn-block">Update</button>
                         </form>
                      </div>
                    </div>
            </div>
            <!-- /.card-body -->
          </div>


@endsection