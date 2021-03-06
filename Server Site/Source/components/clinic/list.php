<?  common::user_access_only("admin");
    common::load_model("db");
    $data = getClinic(common::get_control_value("dr_id"));
    
    if(isset($_POST['add']))
    {
        form_validation::add_validation('name', 'required', 'Clinic Name');
        form_validation::add_validation('location', 'required', 'Clinic Location');
        
        if(form_validation::validate_fields())
        {
            $imgfun=new imagecomponent();
            $name=common::get_control_value("name");
            $location=common::get_control_value("location");
            $address=common::get_control_value("address");
            $fees=common::get_control_value("fees");
            $discount=common::get_control_value("discount");
            $latitude=common::get_control_value("latitude");
            $longitude=common::get_control_value("longitude");
            $facility=common::get_control_value("facilities");
            
           
            
            addClinic(array("dr_id"=>common::get_control_value("dr_id"),"cl_name"=>$name,"cl_location"=>$location,"cl_address"=>$address,"cl_fees"=>$fees,"cl_discount"=>$discount,"cl_latitude"=>$latitude,
            "cl_longitude"=>$longitude,"cl_facilities"=>$facility));
            common::redirect_to(common::get_component_link(array("clinic","list"),array("dr_id"=>common::get_control_value("dr_id"))));
        }
    }
?>