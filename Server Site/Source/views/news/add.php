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
<h1 class="page-header"><i class="fa fa-folder fa-fw"></i> Services
<div class="action pull-right">
    <a href="<?php echo common::get_component_link(array("news","list")); ?>" class="btn btn-primary btn-small"><i class="fa fa-list"></i> List </a>
</div>
</h1>
</div>
</div>
<div class="row">
    <div class="col-md-12">

<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-plus-circle fa-fw"></i> Add Level
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
            <? if ( common::do_show_message() ) {
		          echo common::show_message();	
            } ?> 
			<form id="form" action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                  
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-4">Title</label>
                        <div class="col-lg-8">
						<input class="text-input form-control" name="title" id="txttitle" type="text"  /> (Ex. ABC Series)
					</div>
                    </div>
                    
                 
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-4">Description</label>
                        <div class="col-lg-8">
						<textarea id="elm1" name="content"><?php echo $_REQUEST["content"]; ?></textarea>    
					</div></div>
                    
                    <p>
                        <div class="col-lg-4"></div>
						<input class="btn col-md-8 btn-primary" type="submit" name="add" value="Add" />
					</p>
            </form>
</div>
</div>

    </div>
    

    
</div>

            
            
			</div>
                  </div>
<?php echo common::load_view("common","footer"); ?>
<?php echo common::load_view("common","load_editor"); ?>
</body>

</html>
