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
<h1 class="page-header"><i class="fa fa-folder fa-fw"></i> Doctors :  <div class="action pull-right">
    <a href="<?php echo common::get_component_link(array("doctor","add")); ?>" class="btn btn-primary"><i class="fa fa-plus"></i> Add New</a>
</div>
</h1>
</div>
</div>
<div class="row">
 
    
    <div class="col-md-12">

<?  if ( common::do_show_message() ) {
		          echo common::show_message();	
            } ?> 
<div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" >
                                    <thead>
                                        <tr>
                                            <th style="width: 80px;">ID</th>
                                            
                                            <th>Name</th>
                                            <th>Degree</th>
                                            <th>Email</th>
                                            <th>City</th>
                                            <th>Clinic</th>
                                            <th  style="width: 100px;">Option</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <? foreach($data as $d){ ?>
                                        <tr class="odd gradeX">
                                            <td><?=$d["dr_id"]; ?></td>
                                            <td><?=$d["dr_name"]; ?></td>
                                            <td><?=$d["dr_degree"]; ?></td>
                                            <td><?=$d["dr_email"]; ?></td>
                                            <td><?=$d["dr_city"]; ?></td>
                                            <td><a href="<?=common::get_component_link(array("clinic","list"),array("dr_id"=>$d["dr_id"]))?>" class="btn btn-default">Add Clinic</a></td>
                                            <td class="center">
                                             <a href="<?=common::get_component_link(array('doctor','edit'),array("id"=>$d['dr_id'])); ?>" class="btn btn-sm" title="Edit"><i class="glyphicon glyphicon-pencil"></i></a>
										      <a href="<?=common::get_component_link(array('doctor','delete'),array("id"=>$d['dr_id'])); ?>" class="btn btn-sm"  title="Delete"><i class="glyphicon glyphicon-remove"></i></a> 
										
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
</body>

</html>
