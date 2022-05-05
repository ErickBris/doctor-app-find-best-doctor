<!DOCTYPE html>
<html>

<head>
<?php echo common::load_view("common","head"); ?>
<link href="<?=ADMIN_THEME ?>css/jquery-ui.css" rel="stylesheet">
</head>

<body>

    <div id="wrapper">

        <? echo common::elements("adminnav"); ?>
        <div id="page-wrapper">
<div class="row">
<div class="col-lg-12">
<h1 class="page-header"><i class="fa fa-folder fa-fw"></i> Clinics
<div class="action pull-right">
    
</div>
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
                        <label for="text1" class="control-label col-lg-2">Clinic Name<span class="">*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="name" id="txtname" type="text" required="" /> 
                        </div>
                        <div class="col-lg-2">
                            (Ex. Clinic)
                        </div>
                    </div>
                   
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Location<span class="">*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="location" id="txtlocation" type="text" required="" /> 
                        </div>
                        <div class="col-lg-2">
                            (Ex. Street)
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Address</label>
                        <div class="col-lg-6">
						      <textarea class="text-input form-control" name="address" id="txtaddress" ></textarea> 
                        </div>
                        <div class="col-lg-2">
                           
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Fees<span>*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="fees" id="txtfees" type="number" required="" /> 
                        </div>
                        <div class="col-lg-2">
                           Rs.
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Latitide</label>
                        <div class="col-lg-2">
						  <input class="text-input form-control" name="latitude" id="txtlatitude" type="text" /> 
                        </div>
                        <label for="text1" class="control-label col-lg-1">Longitude</label>
                        <div class="col-lg-2">
						  <input class="text-input form-control" name="longitude" id="txtlongitude" type="text" /> 
                        </div>
                        <div class="col-lg-2">
                           
                        </div>
                    </div>
                        
                   <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Facilities</label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="facilities" id="txtspecility" type="text" /> 
                        </div>
                        <div class="col-lg-2">
                           
                        </div>
                    </div>
						<input class="btn btn-primary pull-right" type="submit" name="add" value="Submit" />
				
            </form>
            
            
            
</div>
</div>


<?  if ( common::do_show_message() ) {
		          echo common::show_message();	
            } ?> 
<div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" >
                                    <thead>
                                        <tr>
                                            <th style="width: 80px;">ID</th>
                                            
                                            <th>Name</th>
                                            <th>Location</th>
                                            <th>Fees</th>
                                            <th>Gallery</th>
                                            <th>Time Table</th>
                                            <th  style="width: 100px;">Option</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <? foreach($data as $d){ ?>
                                        <tr class="odd gradeX">
                                            <td><?=$d["cl_id"]; ?></td>
                                            <td><?=$d["cl_name"]; ?></td>
                                            <td><?=$d["cl_location"]; ?></td>
                                            <td><?=$d["cl_fees"]; ?></td>
                                            
                                            <td><a href="<?=common::get_component_link(array("clinic","photos"),array("cl_id"=>$d["cl_id"]))?>" class="btn btn-default">Add Photo</a></td>
                                            <td><a href="<?=common::get_component_link(array("clinic","timetable"),array("cl_id"=>$d["cl_id"],"dr_id"=>$drid))?>" class="btn btn-default">Set Time</a></td>
                                            <td class="center">
                                             <a href="<?=common::get_component_link(array('clinic','edit'),array("id"=>$d['cl_id'])); ?>" class="btn btn-sm" title="Edit"><i class="glyphicon glyphicon-pencil"></i></a>
										      <a href="<?=common::get_component_link(array('clinic','delete'),array("id"=>$d['cl_id'])); ?>" class="btn btn-sm"  title="Delete"><i class="glyphicon glyphicon-remove"></i></a> 
										
                                            </td>
                                        </tr>
                                     <? } ?>   
                                    </tbody>
                                </table>
                            </div>


    </div>
    

    
</div>

            
            
			</div>
                  </div>
<?php echo common::load_view("common","footer"); ?>
<script src="<?=ADMIN_THEME ?>js/jquery-ui.js"></script>
<script>
  $(function() {
    function split( val ) {
      return val.split( /,\s*/ );
    }
    function extractLast( term ) {
      return split( term ).pop();
    }
 
    $( "#txtspecility" )
      // don't navigate away from the field on tab when selecting an item
      .bind( "keydown", function( event ) {
        if ( event.keyCode === $.ui.keyCode.TAB &&
            $( this ).autocomplete( "instance" ).menu.active ) {
          event.preventDefault();
        }
      })
      .autocomplete({
        source: function( request, response ) {
          $.getJSON( "<?php echo SITE_URL ?>index.php?component=doctor&action=get_tag&type=facility", {
            term: extractLast( request.term )
          }, response );
        },
        search: function() {
          // custom minLength
          var term = extractLast( this.value );
          if ( term.length < 2 ) {
            return false;
          }
        },
        focus: function() {
          // prevent value inserted on focus
          return false;
        },
        select: function( event, ui ) {
          var terms = split( this.value );
          // remove the current input
          terms.pop();
          // add the selected item
          terms.push( ui.item.value );
          // add placeholder to get the comma-and-space at the end
          terms.push( "" );
          this.value = terms.join( ", " );
          return false;
        }
      });
  });
  </script>
<?php echo common::load_view("common","load_editor"); ?>

</body>

</html>
