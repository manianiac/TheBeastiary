<html>
	<head>
		
		<link rel="stylesheet" type="text/css" href="resources/css/jquery.mobile.flatui.css" />
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
	<style type="text/css">
		body {
			overflow:hidden;
		}
	</style>
	<body overflow="hidden">
		<div data-role="page">
			<div data-role="panel" id="panel" data-position="right" data-theme="a" data-display="push">
				Test
			</div>

			<div data-role="header">
				<a data-iconpos="notext" data-role="button" data-icon="home" class="ui-btn-left" title="Home" onclick="$('#mainframe').attr('src', '/monsterList')">Home</a>
				<h1>The Beastiary</h1>
				<a data-iconpos="notext" href="#panel" data-role="button" data-icon="flat-menu" class="ui-btn-right"></a>
			</div>
			<div data-role="content" role="main">
			<!--This iframe will be filled with a jsp to populate the list -->
				<iframe id="mainframe" src="/monsterList" width="100%" height="95%">
			</div>
		</div>
	</body>
</html>