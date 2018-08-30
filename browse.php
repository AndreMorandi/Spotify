<?php
include("includes/handlers/config.php");
//session_destroy(); LOGOUT 


if(isset($_SESSION['userLoggedIn'])) {
	$userLoggedIn = $_SESSION['userLoggedIn'];
}
else {
	header("Location: login.php");
}


?>


<!DOCTYPE html>
<html>
<head>
	<title>Browse - Spotify</title>
	<link rel="icon" type="text/css" href="assets/images/icons/favicon.png">
</head>
<body>

</body>
</html>