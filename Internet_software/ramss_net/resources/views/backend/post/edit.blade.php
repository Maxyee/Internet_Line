@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

@php
	$sub=DB::table('subcategories')->where('category_id',$post->cat_id)->get();
@endphp 
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Post Update Panel</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
          <li class="breadcrumb-item active">Post Update Panel</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>

<!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Post Insert Panel</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form"  action="{{ route('update.post',$post->id) }}" method="post"  enctype="multipart/form-data"> 
                @csrf
                <div class="card-body">

                <div class="row">
                  <div class="form-group col-md-12">
                    <label for="exampleInputEmail1">Title</label>
                    <input type="text" class="form-control" id="exampleInputEmail1"  name="title_bn"  value="{{ $post->title_bn }}">
                  </div>
               </div>

                <div class="row">
                  <div class="form-group col-md-6">
                    <label for="exampleInputEmail1">Category</label>
                  		<select name="cat_id" class="form-control">
                  			  	<option selected="" disabled="">==choose one==</option>
                  			@foreach($category as $row)
                  		     	<option value="{{ $row->id }}"  <?php if ($row->id == $post->cat_id) {
                  		     		 echo "selected";
                  		     	} ?> >{{ $row->category_bn }} </option>
                  			@endforeach
                  		</select>
                  </div>
                  <div class="form-group  col-md-6">
                    <label for="exampleInputPassword1">SubCategory</label>
                    <select name="subcat_id" class="form-control" id="subcat_id">
                  			  	<option selected="" disabled="">==choose one==</option>
                  			  	@foreach($sub as $row)
                  		     	<option value="{{ $row->id }}"  <?php if ($row->id == $post->subcat_id) {
                  		     		 echo "selected";
                  		     	} ?> >{{ $row->subcategory_bn }} </option>
                  			@endforeach
                  		
                  		</select>
                  </div>
               </div>
               	<div class="row">
               		 <div class="form-group col-lg-12">
                    <label for="exampleInputFile">File input</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="exampleInputFile" name="image" >
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text" id="">Upload</span>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6">
                  	  <label for="exampleInputFile">Old Image</label><br>
                  		<img src="{{ URL::to($post->image) }}" style="height: 50px; width: 70px;">
                  		<input type="hidden" name="oldimage" value="{{ $post->image }}">
                  </div>
               	</div>

			                    <div class="row">
                  <div class="form-group col-md-12">
                    <label for="exampleInputEmail1">Apply for connection link</label>
                    <input type="text" class="form-control" id="exampleInputEmail1"  name="apply_link" value="{{ $post->apply_link }}">
                  </div>
               </div>
			                    
                    <div class="form-group  col-md-12">
                    <label for="exampleInputPassword1">Details</label>
                     <textarea class="textarea" placeholder="Place some text here" name="details_bn" 
                          style="width: 100%; height: 300px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          	{{ $post->details_bn }}
                          </textarea>
                  </div>
                  <hr>
                  <h4 class="text-center">Extra Option</h4>
                

                 <div class="row">

                  <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="firstpackage" value="1"   <?php  if ($post->firstpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">1st Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
               		</div>
                  <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="seconpackage" value="1"   <?php  if ($post->seconpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">2nd Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
                  </div>

                   <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="thirdpackage" value="1"   <?php  if ($post->thirdpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">3rd Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
                  </div>

                  <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="fourpackage" value="1"   <?php  if ($post->fourpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">4th Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
                  </div>
				                    <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="fifthpackage" value="1"   <?php  if ($post->fifthpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">5th Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
                  </div>
				  				                    <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="sixpackage" value="1"   <?php  if ($post->sixpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">6th Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
                  </div>
				  				                    <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="seventhpackage" value="1"   <?php  if ($post->seventhpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">7th Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
                  </div>
				  				                    <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="eightpackage" value="1"   <?php  if ($post->eightpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">8th Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
                  </div>
               				                    <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="ninthpackage" value="1"   <?php  if ($post->ninthpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">9th Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
                  </div>
				  				                    <div class="form-check col-md-6">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="tenthpackage" value="1"   <?php  if ($post->tenthpackage == 1) {
                    	 echo "checked";
                    } ?> >
                    <label class="form-check-label" for="exampleCheck1">10th Package (যদি এটা প্যাকেজ পোষ্ট হয়)</label>
                  </div>
            </div>
                <!-- /.card-body -->	
                <br>
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
         </div>
       </div>
   </div>
</section>

<script type="text/javascript">
   $(document).ready(function() {
         $('select[name="cat_id"]').on('change', function(){
             var cat_id = $(this).val();
             if(cat_id) {
                 $.ajax({
                     url: "{{  url('/get/subcat/') }}/"+cat_id,
                     type:"GET",
                     dataType:"json",
                     success:function(data) {
                        $("#subcat_id").empty();
                              $.each(data,function(key,value){
                                  $("#subcat_id").append('<option value="'+value.id+'">'+value.subcategory_bn+'</option>');
                              });

                     },
                    
                 });
             } else {
                 alert('danger');
             }

         });
     });

</script>


@endsection