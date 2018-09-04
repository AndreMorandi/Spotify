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
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
	<title>Browse - Spotify</title>
	<link rel="icon" type="text/css" href="assets/images/icons/favicon.png">
	<link rel="stylesheet" type="text/css" href="assets/css/browse.css">

</head>
<body>
	<nav class="col-1">
		Navegação
	</nav>
	<div class="col-2">
	  	<header>Cabeçalho</header>
	    <main class="content">
	    <article>Conteúdo</article>
	    </main>
	</div>




</body>
</html>