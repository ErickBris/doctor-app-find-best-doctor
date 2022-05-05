        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand logo" href="<?php echo SITE_URL; ?>/index.php" style="height: 30px; padding: 3px;"><img src="<?=ADMIN_THEME ?>/images/logo.png" height="30px" /> </a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <? if(common::get_session(ADMIN_LOGIN_TYPE)=="admin")
                        { ?>
                        <li><a href="<?=common::get_component_link(array("admin","sendmessage")); ?>">Send Notification</a></li>
               <li><a href="<?=common::get_component_link(array("pages","page"),array("slug"=>"feature")); ?>">About App</a></li> 
               
                <? } ?>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <?
                        if(common::get_session(ADMIN_LOGIN_TYPE)=="admin")
                        {
                            ?>
                            <li><a href="<?=common::get_component_link(array("user","add")); ?>"><i class="fa fa-users fa-fw"></i> Add New User</a>                           
                            <?
                        }else if(common::get_session(ADMIN_LOGIN_TYPE)=="doctor"){
                            ?>
                            <li><a href="<?=common::get_component_link(array("doctor","profile")); ?>"><i class="fa fa-medkit fa-fw"></i> Profile</a>
                            <li><a href="<?=common::get_component_link(array("doctor","clinics")); ?>"><i class="fa fa-location-arrow fa-fw"></i> Clinics</a>
                            <?
                        }
                         ?>
                         <li><a href="<?=common::get_component_link(array("user","changepassword")); ?>"><i class="fa fa-lock fa-fw"></i> Change Password</a>
                        <li><a href="<?=common::get_component_link(array("home","logout")); ?>"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default navbar-static-side" id="navbar-default" role="navigation">
                <div class="sidebar-collapse">
                <? if(common::get_session(ADMIN_LOGIN_TYPE)=="doctor"){
                    ?>
                    <ul class="nav" id="side-menu">
                        
                        <li>
                            <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-book"></i> Appointment<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                        <li>
                                            <a href="<?=common::get_component_link(array("appointment","pending")); ?>"><i class="fa fa-list-alt"></i>Pending</a>
                                        </li>
                                        <li>
                                            <a href="<?=common::get_component_link(array("appointment","complete")); ?>"><i class="fa fa-plus-square"></i>Completed</a>
                                        </li>
                                        <li>
                                            <a href="<?=common::get_component_link(array("appointment","cancled")); ?>"><i class="fa fa-plus-square"></i>Cancled</a>
                                        </li>
                            </ul>

                        </li>
                    </ul>
                    <?php
                }else if(common::get_session(ADMIN_LOGIN_TYPE)=="admin"){ ?>
                    <ul class="nav" id="side-menu">
                        
                        <li>
                            <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-book"></i> Category<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                            <a href="<?=common::get_component_link(array("category","list")); ?>"><i class="fa fa-list-alt"></i>List</a>
                                        </li>
                                        <li>
                                            <a href="<?=common::get_component_link(array("category","add")); ?>"><i class="fa fa-plus-square"></i> Add New</a>
                                        </li>
                                    
                            </ul>

                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-plus"></i> Doctor<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                            <a href="<?=common::get_component_link(array("doctor","list")); ?>"><i class="fa fa-list-alt"></i>List</a>
                                        </li>
                                        <li>
                                            <a href="<?=common::get_component_link(array("doctor","add")); ?>"><i class="fa fa-plus-square"></i> Add New</a>
                                        </li>
                                    
                            </ul>

                        </li>
                       <li>
                            <a href="<?=common::get_component_link(array("registers","list")); ?>"><i class="glyphicon glyphicon-user"></i> App Registers</a>
                       </li>
                       
                    </ul>
                <? } ?>
                    <!-- /#side-menu -->
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
