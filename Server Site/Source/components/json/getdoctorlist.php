<?php header('Content-type: text/json');
$data = array();
$page=1;
    if(isset($_GET['go']))
        $page=common::get_control_value('go');
$filter = "";
$orderby = "";
/*------------- ..&id=1------------*/
if($_REQUEST["id"]!="")
{
    $filter .=" and `doct`.`id`='".trim($_REQUEST["id"])."' ";
}

if($_REQUEST["city"]!="")
{
    $filter .=" and `doct`.`dr_city`='".trim($_REQUEST["city"])."' ";
}
if($_REQUEST["cat_id"]!="")
{
    $filter .=" and `doct`.`cat_id`='".trim($_REQUEST["cat_id"])."' ";
}
if($_REQUEST["experiance"]!="")
{
    $orderby ="`doct`.`dr_experiance` DESC ";
}
if($_REQUEST["search"]!=""){
    $filter .=" and `doct`.`dr_name` like '%".trim(common::get_control_value("search"))."%' ";
}
$q = new Query();
$q->select("`doct`.*,CONCAT('".CONTENT_IMAGE_URL."/small/',`doct`.`dr_cover_image`) as cover_path,CONCAT('".CONTENT_IMAGE_URL."/small/',`doct`.`dr_banner_image`) as banner_path,`rats`.avg,`rats`.`count`  ")
->from("`".TBL_Doctor."` as `doct` left outer join (select AVG(rating) as avg, count(id) as `count`, dr_id from `reviews` group by (dr_id)) as `rats` on `rats`.`dr_id` = `doct`.`dr_id` where 1 ".$filter."")
->limit(DEFAULT_PAGE_SIZE)
->page($page)
->run();
$count =  $q->get_selected_count();
$cpage=$q->get_page();
$gpages=$q->get_pages();

$resArray = $q->get_selected();
$output = array();
foreach($resArray as $array){
    $q = new Query();
    $q->select()
    ->from(TBL_Clinic)
    ->where_equal_to(array("dr_id"=>$array["dr_id"]))
    ->run();
    $clinicsarray = $q->get_selected();
    $clinics = array();
    foreach($clinicsarray as $clinic){
        $q = new Query();
        $q->select("`".TBL_Clinic_photo."`.*,CONCAT('".CONTENT_IMAGE_URL."/small/',`image`) as image_path")
        ->from(TBL_Clinic_photo)
        ->where_equal_to(array("cl_id"=>$clinic["cl_id"]))
        ->run();
        $clinic['photos'] = $q->get_selected();
        
        $q = new Query();
        $q->select()
        ->from(TBL_Timetable)
        ->where_equal_to(array("cl_id"=>$clinic["cl_id"],"dr_id"=>$array["dr_id"]))
        ->run();
        $clinic['times'] = $q->get_selected();
        
/*        $day_array = array("mon","tue","wed","thu","fri","sat","sun");
                        $time_array = array("8:30-9:00 AM","9:00 - 9:30 AM","9:30 - 10:00 AM","10:00 - 10:30 AM","10:30 - 11:00 AM","11:00 - 11:30 AM","11:30 - 12:00 PM",
                        "12:00 - 12:30 PM","12:30 - 01:00 PM","01:00 - 01:30 PM","01:30 - 02:00 PM","02:00 - 02:30 PM","02:30 - 03:00 PM","03:00 - 03:30 PM",
                        "04:00 - 04:30 PM","04:30 - 05:00 PM","05:00 - 05:30 PM","06:30 - 07:00 PM","07:00 - 07:30 PM","07:30 - 08:00 PM","08:00 - 08:30 PM",
                        "08:30 - 09:00 PM","09:00 - 09:30 PM","09:30 - 10:00 PM","10:00 - 10:30 PM");
                        $table ="<html><body><table width='100%'>
                            <tr>
                            <th>Mon</th>
                            <th>Tue</th>
                            <th>Wed</th>
                            <th>Thu</th>
                            <th>Fri</th>
                            <th>Sat</th>
                            <th>Sin</th>
                            </tr>
                        ";
                        foreach($time_array as $time){
                            $table .="<tr>";
                             foreach($day_array as $day){
                                $intime = false;    
                                foreach($clinic['times'] as $dtime){
                                    if($dtime["day"]==$day && $dtime["during"]==$time)
                                        $intime = true;                                    
                                }
                                    if($intime){
                                            $table .= "<td><span style='color:green; font-size:8px' >".str_replace(" ","",$time)."</span></td>";
                                        }else{
                                            $table .= "<td><span style='color:black; font-size:8px' >".str_replace(" ","",$time)."</span></td>";
                                        }
                             }
                            $table .="</tr>";
                        }
                        $table .="</table></body></html>";    
        $clinic['time_table'] = $table;*/
        $clinics[] = $clinic;
    }
    
    $array['clinic'] = $clinics ;
    $output[] = $array;
}

$data['count'] = $count;
$data['current_page'] = $cpage;
$data['total_pages'] = $gpages;
$data['data'] = $output;


echo json_encode($data);
?>