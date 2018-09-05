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
	  	<header>
	  		Cabeçalho
	  	</header>

	    <main class="content">
		    <article>
		    	Conteúdo
		    </article>
	    </main>
	</div>


	<div id="nowPlayingBarContainer">
		<footer class="now-playing-bar-container">
			<div id="nowPlayingBar">

				<!--     NOW PLAYING BAR LEFT     -->
				<div id="nowPlayingLeft">
					
				</div>

				<!--     NOW PLAYING BAR CENTER     -->
				<div id="nowPlayingCenter">
					<div class="content playerControls">

						<!--     BUTTONS     -->
						<div class="buttons">

							<button class="controlButton shuffle" title="Shuffle button">
								<img src="assets/images/icons/shuffle-gray.png" alt="Shuffle">
							</button>

							<button class="controlButton previous" title="Previous button">
								<img src="assets/images/icons/previous.png" alt="Previous">
							</button>

							<button class="controlButton play" title="Play button">
								<img src="assets/images/icons/play.png" alt="Play">
							</button>

							<button class="controlButton pause" title="Pause button" style="display: none;">
								<img src="assets/images/icons/pause.png" alt="Pause">
							</button>

							<button class="controlButton next" title="Next button">
								<img src="assets/images/icons/next.png" alt="Next">
							</button>

							<button class="controlButton repeat" title="Repeat button">
								<img src="assets/images/icons/repeat-gray.png" alt="Repeat">
							</button>

						</div>
					</div>
					
				</div>

				<!--     NOW PLAYING BAR RIGHT     -->
				<div id="nowPlayingRight">
					
				</div>
			</div>
		</footer>
	</div>




</body>
</html>