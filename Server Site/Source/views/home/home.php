<!DOCTYPE HTML>
<head>
	<meta http-equiv="content-type" content="text/html" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="aronotic" />
        <meta name="description" content=""/>
		<meta name="keywords" content=""/>
		<meta name="generator" content=""/>
		<meta name="Resource-Type" content="document"/>
		<meta name="Distribution" content="global"/>
		<meta name="Robots" content="index, follow"/>
		<meta name="Revisit-After" content="21 days"/>
		<meta name="Rating" content="general"/>
        
        
	<title>Way Admin</title>
    <link href="<?=ADMIN_THEME ?>css/bootstrap.css" rel="stylesheet" />
    <link href="<?=ADMIN_THEME ?>css/bootstrap-theme.css" rel="stylesheet"  />
    
        <!-- SB Admin CSS - Include with every page -->
    
    <link href="<?=ADMIN_THEME ?>css/style.css" rel="stylesheet" />
    
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>

<body>
<div id="wrapper">
    <header>
        
    </header>
    <div class="container" >
        <div class="row">
            <div class="">
                         <div class="login-panel panel panel-default" style="margin: 60px auto;">
                            
                            <div class="panel-heading">
                                <h3 class="panel-title">Please Sign In</h3>
                            </div>
                            <div class="panel-body">
                                <? if ( common::do_show_message() ) {
		          echo common::show_message();	
            } ?> 
                                <form role="form" action="" method="post" >
                                    <fieldset>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="E-mail" name="username" type="text" autofocus>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                        </div>
                                        <div>
                                            <select class="form-control" name="loginas">
                                                <option value="">--long as---</option>
                                                <option value="admin">Administrator</option>
                                                <option value="doctor">Doctor </option>
                                            </select>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                            </label>
                                        </div>
                                        <!-- Change this to a button or input when using this as a form -->
                                        <input type="submit" class="btn btn-lg btn-success btn-block" name="login" value="Login" />
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
        
        </div>
    </div> 
   
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?=ADMIN_THEME ?>/js/bootstrap.min.js"></script>
    <script>
    $(document).ready(function(){
       $('.carousel').carousel();
 
    });
    </script>
</body>
</html>