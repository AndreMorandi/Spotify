<?php

	include("includes/handlers/config.php");
	include("includes/classes/Account.php");
	include("includes/classes/Constants.php");

	$account = new Account($con);

	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");

	if(isset($_SESSION['userLoggedIn'])) {
		header("Location: browse.php");
	}

	function getInputValue($name){
		if(isset($_POST[$name])){
			echo $_POST[$name];
		}
	}

?>



<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<title>Welcome to Spotify</title>
	<link rel="stylesheet" type="text/css" href="assets/css/registerStyle.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
	<link rel="icon" type="text/css" href="assets/images/icons/favicon.png">
</head>

<body>
	
	<div class="wrap">

		<div class="pb-2 mt-2 mb-2 border-bottom">
			<div class="signup-header">
				<div class="container">
					<div class="content">
						<span class="spotify-logo" href="#">Spotify</span>
					</div>
				</div>
			</div>
		</div>


		<div class="container">
			<section class="registerContainer">
				<div class="content">
					<h2 class="center h-resized">Log in to access Spotify</h2>
					<form id="loginForm" action="login.php" method="POST">
						
						<div class="row">
							<div class="form-group col-12 col-md-6 mx-auto">
								<?php echo $account->getError(Constants::$loginFailed); ?>
								<label for="loginUsername">Username</label>
								<input class="form-control" type="text" name="loginUsername" id="loginUsername" placeholder="Enter your username" value="<?php getInputValue('loginUsername') ?>" required></input>
							</div>
						</div>
						
						<div class="row">
							<div class="form-group col-12 col-md-6 mx-auto">
								<label for="loginPassword">Password</label>
								<input class="form-control" type="password" name="loginPassword" id="loginPassword" placeholder="Enter your password" required>
							</div>
						</div>
						
						<div class="row justify-content-center">
							<button type="submit" class="btn btn-green btn-circle btn-custom col-8 col-md-5 mx-auto" id="loginButton" name="loginButton">
								Log in
							</button>
						</div>
						<div class="row justify-content-center mb-5">
							<small><a href="register.php">Doesn't have an accout yet? Click here.</a></small>
						</div>
						

					</form>
				</div>
			</section>
		</div>
		

	</div>


	



	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>
