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
<h1 class="page-header"><i class="fa fa-folder fa-fw"></i> Doctor
<div class="action pull-right">
    <a href="<?php echo common::get_component_link(array("doctor","list")); ?>" class="btn btn-primary btn-small"><i class="fa fa-list"></i> List </a>
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
                        <label for="text1" class="control-label col-lg-2">Doctor Name<span class="">*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="name" id="txtname" type="text" required="" /> 
                        </div>
                        <div class="col-lg-2">
                            (Ex. Dr.xyz)
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Category<span class="">*</span></label>
                        <div class="col-lg-6">
						      <select class="text-input form-control" name="category">
                                <option value="">---Select category---</option>
                                <? foreach($cats as $cat){
                                    ?>
                                    <option value="<? echo $cat["id"]; ?>"><?php echo $cat["title"]; ?></option>
                                    <?
                                } ?>
                              </select> 
                        </div>
                        <div class="col-lg-2">
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Doctor Email<span class="">*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="email" id="txtemail" type="email" required="" /> 
                        </div>
                        <div class="col-lg-2">
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Password<span class="">*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="password" id="txtpassword" type="password" required="" /> 
                        </div>
                        <div class="col-lg-2">
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Degree<span class="">*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="degree" id="txtdegree" type="text" required="" /> 
                        </div>
                        <div class="col-lg-2">
                            (Ex. MBBS)
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Designation</label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="designation" id="txtdesignation" type="text" /> 
                        </div>
                        <div class="col-lg-2">
                           
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Experiance<span>*</span></label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="experiance" id="txtexperiance" type="number" required="" /> 
                        </div>
                        <div class="col-lg-2">
                           Years
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Speciality</label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="speciality" id="txtspecility" type="text" /> 
                        </div>
                        <div class="col-lg-2">
                           
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Country</label>
                        <div class="col-lg-2">
						  <input class="text-input form-control" name="country" id="txtcountry" type="text" /> 
                        </div>
                        <label for="text1" class="control-label col-lg-1">City<span>*</span></label>
                        <div class="col-lg-2">
						  <input class="text-input form-control" name="city" id="txtcity" type="text" required="" /> 
                        </div>
                        <div class="col-lg-2">
                           
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Cover Image</label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="image" id="txtimage" type="file" /> 
                        </div>
                        <div class="col-lg-4">
                           dimention 480 x 480 px;
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Banner Image</label>
                        <div class="col-lg-6">
						  <input class="text-input form-control" name="banner" id="txtbanner" type="file" /> 
                        </div>
                        <div class="col-lg-4">
                           dimention 590 x 300 px;
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="text1" class="control-label col-lg-2">Description</label>
                        <div class="col-lg-10">
						<textarea id="elm1" name="content"></textarea>    
					</div></div>
						<input class="btn btn-primary pull-right" type="submit" name="add" value="Submit" />
				
            </form>
</div>
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
          $.getJSON( "<?php echo SITE_URL ?>index.php?component=doctor&action=get_tag&type=speciality", {
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
    $(function() {
    function split( val ) {
      return val.split( /,\s*/ );
    }
    function extractLast( term ) {
      return split( term ).pop();
    }
 
    $( "#txtdegree" )
      // don't navigate away from the field on tab when selecting an item
      .bind( "keydown", function( event ) {
        if ( event.keyCode === $.ui.keyCode.TAB &&
            $( this ).autocomplete( "instance" ).menu.active ) {
          event.preventDefault();
        }
      })
      .autocomplete({
        source: function( request, response ) {
          $.getJSON( "<?php echo SITE_URL ?>index.php?component=doctor&action=get_tag&type=degree", {
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
