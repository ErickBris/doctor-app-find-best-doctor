<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Way Admin</title>

    <!-- Core CSS - Include with every page -->
    <link href="<?=ADMIN_THEME ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?=ADMIN_THEME ?>font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Page-Level Plugin CSS - Dashboard -->
    <link href="<?=ADMIN_THEME ?>css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <link href="<?=ADMIN_THEME ?>css/plugins/timeline/timeline.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="<?=ADMIN_THEME ?>css/sb-admin.css" rel="stylesheet">
    <link href="<?=ADMIN_THEME ?>css/style.css" rel="stylesheet">
</head>

<body>

    <div id="wrapper">

        <? echo common::elements("adminnav"); ?>
        <div id="page-wrapper">
<div class="row">
<div class="col-lg-12">
<h1 class="page-header"><i class="fa fa-folder fa-fw"></i> College / School

</h1>
</div>
</div>
<form id="form" action="" method="post" enctype="multipart/form-data" class="form-horizontal">
<div class="row">
    <div class="col-md-6">

<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-plus-circle fa-fw"></i> College / School Contact Information
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
            <? if ( common::do_show_message() ) {
		          echo common::show_message();	
            } ?> 
			
                  
                    <div class="form-group col-md-12">
                        
						<input class="text-input form-control" name="setting['name']" type="text" value="<? get_setting_value("name"); ?>" placeholder="College / School Name" /> 
					
                    </div>
                    <div class="form-group col-md-12">
                        
						<textarea class="text-input small-input form-control" name="setting['address']" placeholder="Address "> <? get_setting_value("address"); ?> </textarea>
					</div>
                    <div class="col-md-6">
                      <div class="form-group   "> 
                       
						<input class="form-control" name="setting['city']" type="text" placeholder="City"  value="<? get_setting_value("city"); ?>"  />
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group  "> 
                       
						<input class="form-control" name="setting['state']" type="text" placeholder="State"  value="<? get_setting_value("state"); ?>"  />
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group   "> 
                       
						<input class="form-control" name="setting['zip']" type="text" placeholder="Zip Code"  value="<? get_setting_value("zip"); ?>"  />
                      </div>
                    </div>
                    
                    
                    <div class="col-md-6">
                     <div class="form-group  input-group ">
                        
                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
						<input class="form-control" name="setting['phone']" type="tel" placeholder="2822 244086 (Phone)"  value="<? get_setting_value("phone"); ?>"  />
                        
                    </div>
                    </div>
                    
                   
                    <div class="col-md-6">
                    <div class="form-group  input-group ">
                        
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
						<input class="form-control" name="setting['email']" type="email" placeholder="Email Address 1"  value="<? get_setting_value("email"); ?>"  />
                        
                    </div>
                    </div>
                    
                    
                     
                    
                    <div class="col-md-6 ">
                      <div class="form-group  input-group "> 
                       <span class="input-group-addon"><strong>W</strong></span>
						<input class="form-control" name="setting['website']" type="text" placeholder="http://www.yoursite.com"  value="<? get_setting_value("website"); ?>"   />
                        
                      </div>
                    </div>
                   
</div>
</div>

    </div>
    
    <div class="col-md-6">

<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-plus-circle fa-fw"></i> Social Links
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        
                            <div class="col-md-12 ">
                              <div class="form-group  input-group "> 
                               <span class="input-group-addon"><strong><i class="fa fa-facebook"></i></strong></span>
        						<input class="form-control" name="setting['fblink']"  value="<? get_setting_value("fblink"); ?>"  type="text" placeholder="http://www.facebook.com/yourcollege"  />
                              </div>
                            </div>
                            <div class="col-md-12 ">
                              <div class="form-group  input-group "> 
                               <span class="input-group-addon"><strong><i class="fa fa-twitter"></i></strong></span>
        						<input class="form-control" name="twlink"  value="<? get_setting_value("twlink"); ?>"  type="text" placeholder="http://www.twitter.com/yourcollege"  />
                              </div>
                            </div>
                            <div class="col-md-12 ">
                              <div class="form-group  input-group "> 
                               <span class="input-group-addon"><strong><i class="fa fa-linkedin"></i></strong></span>
        						<input class="form-control" name="lnlink"  value="<? get_setting_value("lnlink"); ?>"  type="text" placeholder="http://www.linkedin.com/yourcollege"  />
                              </div>
                            </div>
                            <div class="col-md-12 ">
                              <div class="form-group  input-group "> 
                               <span class="input-group-addon"><strong><i class="fa fa-google-plus"></i></strong></span>
        						<input class="form-control" name="gplink" type="text"  value="<? get_setting_value("gplink"); ?>"  placeholder="http://www.plus.google.com/yourcollege"  />
                              </div>
                            </div>
                            <div class="col-md-12 ">
                              <div class="form-group  input-group "> 
                               <span class="input-group-addon"><strong><i class="fa fa-flickr"></i></strong></span>
        						<input class="form-control" name="fllink"  value="<? get_setting_value("fllink"); ?>"  type="text" placeholder="http://www.flickr.com/yourcollege"  />
                              </div>
                            </div>
                            <div class="col-md-12 ">
                              <div class="form-group  input-group "> 
                               <span class="input-group-addon"><strong><i class="fa fa-youtube"></i></strong></span>
        						<input class="form-control" name="youlink" type="text"  value="<? get_setting_value("youlink"); ?>"  placeholder="http://www.youtube.com/yourcollege"  />
                              </div>
                            </div>
                        </div>
</div>
</div>
    
</div>

                    <p>
                        
						<input class="btn btn-primary" type="submit" name="add" value="Add" />
					</p>
            
 </form>           
			</div>
                  </div>
    <!-- /#wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="<?=ADMIN_THEME ?>js/jquery-1.10.2.js"></script>
    <script src="<?=ADMIN_THEME ?>js/bootstrap.min.js"></script>
    <script src="<?=ADMIN_THEME ?>js/plugins/metisMenu/jquery.metisMenu.js"></script>


    <!-- Page-Level Plugin Scripts - Tables -->
    <script src="<?=ADMIN_THEME ?>js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="<?=ADMIN_THEME ?>js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <!-- SB Admin Scripts - Include with every page -->
    <script src="<?=ADMIN_THEME ?>js/sb-admin.js"></script>

    <!-- Page-Level Demo Scripts - Dashboard - Use for reference -->
    
        <script>
    $(document).ready(function() {
        $('#dataTables-example').dataTable();
       
    });
    </script>
    <script>
    </script>
</body>

</html>
