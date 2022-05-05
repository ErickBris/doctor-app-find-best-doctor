<!DOCTYPE html>
<html>

<head>
<?php echo common::load_view("common","head"); ?>
</head>

<body>

    <div id="wrapper">

        <? echo common::elements("adminnav"); ?>
        <div id="page-wrapper">
<div class="row">
<div class="col-lg-12">
<h1 class="page-header"><i class="fa fa-folder fa-fw"></i> Photos

</h1>
</div>
</div>
<div class="row">
    <div class="col-md-12">

<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-plus-circle fa-fw"></i> Add
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
            <? if ( common::do_show_message() ) {
		          echo common::show_message();	
            } ?> 
			<form id="form" action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                  
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Image Title<span class="">*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="name" id="txtname" type="text" required="" /> 
                        </div>
                        <div class="col-lg-2">
                            (Ex. Clinic Image Title)
                        </div>
                    </div>
                   <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Browse Image<span class="">*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="image" id="txtimage" type="file"  required="" /> 
                        </div>
                        <div class="col-lg-2">
                            (jpg | png)
                        </div>
                    </div>
                    
						<input class="btn btn-primary pull-right" type="submit" name="add" value="Submit" />
				
            </form>
            
            
            
</div>
</div>
<?php foreach($photos as $photo){
    ?>
    <div class="col-md-2 thumbnail">
        <img src="<?php echo CONTENT_IMAGE_URL."/small/".$photo["image"]; ?>" />
        <a href="<? echo common::get_component_link(array("clinic","photos"),array("cl_id"=>common::get_control_value("cl_id"),"delete"=>$photo["id"])) ?>">Delete</a>
        
    </div>
    <?
}
?>


    </div>
    

    
</div>

            
            
			</div>
                  </div>
<?php echo common::load_view("common","footer"); ?>

</body>

</html>
