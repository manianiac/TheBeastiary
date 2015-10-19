<html>
	<head>
			
			<link rel="stylesheet" type="text/css" href="resources/css/jquery.mobile.flatui.css" />
			<link rel="stylesheet" type="text/css" href="resources/css/cardUI.css" />
			<link rel="stylesheet" type="text/css" href="resources/css/smoothness/jquery-ui.theme.min.css"/>
			<script src="resources/js/jquery.js"></script>
			<script>
				$(document).bind('mobileinit',function(){
					$.mobile.changePage.defaults.changeHash = false;
					$.mobile.hashListeningEnabled = false;
					$.mobile.pushStateEnabled = false;
				});
			</script>
			<script src="resources/js/jquery.mobile-1.4.0-rc.1.js"></script>
			
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
		<div data-role="page">
				<div class="card">
					<div id="user-info" class="content">
						<span class="title">User Info</span>
						<h5>Username: manianiac</h5>
						<h5>Email: test@test.com</h5>
						<h5>Join Date: September 5, 2015</h5>
					</div>
				</div>
				<div class="card">
					<div id="monsters-created" class="content">
						<span class="title">Monsters Created</span>
						<ul data-role="listview" data-inset="true">
							<li data-role="list-divider" data-theme="a">Most Recent Monsters</li>
							<li><a href="#">Monster A</a></li>
							<li><a href="#">Monster D</a></li>
							<li><a href="#">Monster C</a></li>
							<li><a href="#">Monster B</a></li>
							<li><a href="#">See All Monsters</a></li>
						</ul>
					</div>
				</div>
				<div class="card">
					<div id="favorited-monsters" class="content">
						<span class="title">Favorited Monsters</span>
						<ul data-role="listview" data-inset="true">
							<li data-role="list-divider" data-theme="a">Most Recent Favorites</li>
							<li><a href="#">Favorite A</a></li>
							<li><a href="#">Favorite D</a></li>
							<li><a href="#">Favorite C</a></li>
							<li><a href="#">Favorite B</a></li>
							<li><a href="#">See All Favorites</a></li>
						</ul>
					</div>
				</div>
		</div>
	</body>
</html>