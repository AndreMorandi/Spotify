<?php
include("includes/handlers/config.php");
//session_destroy(); LOGOUT 


if(isset($_SESSION['userLoggedIn'])) {
	$userLoggedIn = $_SESSION['userLoggedIn'];
}
else {
	header("Location: login.php");
}

//include("includes/nowPlayingBar.php");

?>


<!DOCTYPE html>
<html>
<head>
	<title>Browse - Spotify</title>
	<link rel="icon" type="text/css" href="assets/images/icons/favicon.png">
	<link rel="stylesheet" type="text/css" href="assets/css/browse.css">
</head>
<body>

</body>
</html>