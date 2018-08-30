<?php
	
	include("includes/handlers/config.php");
	include("includes/classes/Account.php");
	include("includes/classes/Constants.php");

	$account = new Account($con);

	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");

	function getInputValue($name){
		if(isset($_POST[$name])){
			echo $_POST[$name];
		}
	}

	if(isset($_SESSION['userLoggedIn'])) {
		header("Location: browse.php");
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
						<span class="spotify-logo">Spotify</span>
					</div>
				</div>
			</div>
		</div>


		<div class="container">
			<section class="registerContainer">
				<div class="content">
					<h2 class="center h-resized">Sign up with your email address</h2>
					<form id="registerForm" action="register.php" method="POST">
						<div class="row">
							<div class="form-group col-12 col-md-6 mx-auto">
								<?php echo $account->getError(Constants::$usernameCharacters); ?>
								<?php echo $account->getError(Constants::$usernameTaken); ?>
								<label for="username">Username</label>						
								<input class="form-control" type="text" name="username" id="username" placeholder="Your username" value="<?php getInputValue('username') ?>" required></input>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-12 col-md-6 mx-auto">
								<?php echo $account->getError(Constants::$emailsDoNotMatch); ?>
								<?php echo $account->getError(Constants::$emailInvalid); ?>
								<?php echo $account->getError(Constants::$emailTaken); ?>
								<label for="email">Email</label>
								<input class="form-control" type="email" name="email" id="email" placeholder="Enter your email" value="<?php getInputValue('email') ?>" required></input>
								
							</div>
						</div>
						<div class="row">
							<div class="form-group col-12 col-md-6 mx-auto">
								<label for="email2">Confirm email</label>
								<input class="form-control" type="email" name="email2" id="email2" placeholder="Confirm your email"  required></input>
								
							</div>
						</div>
						<div class="row">
							<div class="form-group col-12 col-md-6 mx-auto">
								<?php echo $account->getError(Constants::$passwordsDoNotMatch); ?>
								<?php echo $account->getError(Constants::$passwordNotAlphaNumeric); ?>
								<?php echo $account->getError(Constants::$passwordCharacters); ?>
								<label for="password">Password</label>
								<input class="form-control" type="password" name="password" id="password" placeholder="Enter your password" required></input>
								
							</div>
						</div>
						<div class="row">
							<div class="form-group col-12 col-md-6 mx-auto">
								<label for="password2">Confirm password</label>
								<input class="form-control" type="password" name="password2" id="password2" placeholder="Confirm your password" required></input>
								
							</div>
						</div>

						<div class="row">
							<div class="form-group col-12 col-md-6 mx-auto">
								<?php echo $account->getError(Constants::$firstNameCharacters); ?>
								<?php echo $account->getError(Constants::$firstNameNotAlpha); ?>
								<label for="firstName">First name</label>
								<input class="form-control" type="text" name="firstName" id="firstName" placeholder="What should we call you?" value="<?php getInputValue('firstName') ?>" required></input>
								
							</div>
						</div>

						<div class="row">
							<div class="form-group col-12 col-md-6 mx-auto">
								<?php echo $account->getError(Constants::$lastNameCharacters); ?>
								<?php echo $account->getError(Constants::$lastNameNotAlpha); ?>
								<label for="lastName">Last name</label>
								<input class="form-control" type="text" name="lastName" id="lastName" placeholder="Your last name" value="<?php getInputValue('lastName') ?>" required></input>
								
							</div>
						</div>

						<div class="row justify-content-center">
							<button class="btn btn-green btn-circle btn-custom col-8 col-md-5 mx-auto" id="registerButton" name="registerButton">
								Register
							</button>
						</div>
						<div class="row justify-content-center mb-5">
							<small><a href="login.php">Already have an accout? Click here.</a></small>
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