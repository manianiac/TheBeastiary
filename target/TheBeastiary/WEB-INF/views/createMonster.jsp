<html>
   <head>
      <link rel="stylesheet" type="text/css" href="resources/css/jquery.mobile.flatui.css" />
      <link rel="stylesheet" type="text/css" href="resources/css/cardUI.css" />
      <link rel="stylesheet" type="text/css" href="resources/css/smoothness/jquery-ui.theme.min.css" />
      <script src="resources/js/jquery.js"></script>
      <script>
         $(document).bind('mobileinit', function() {
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
			<div class="card" id="GeneralInfo">
				<span class="title">General Monster Information</span>
				<form>
					Monster Name: <input type="text" name="name"><br>
					Race: <input type="text" name="race"><br>
					Size: <input type="text" name="size"><br>
					Alignment: <input type="text" name="alignment"><br>
					Armor Class: <input type="text" name="armorClass"><br>
					Armor Type: <input type="text" name="armorType"><br>
					Hit Dice: <input type="text" name="hitDice"><br>
				</form>	
			</div>
			<div class="card" id="MiddleInfo">
				<span class="title">Middle Information</span>
					<form>
						Damage Resistance: <input type="text" name="damageResistance"><br>
						Damage Immunities: <input type="text" name="damageImmunities"><br>
						Comdition Immunities: <input type="text" name="conditionImmunities"><br>
						Senses: <input type="text" name="senses"><br>
						Languages: <input type="text" name="languages"><br>					
						Challenge: <input type="text" name="challenge"><br>
						Skills: <input type="text" name="skills"><br>
						Saves: <input type="text" name="saves"><br>
					</form>
			</div>
			<div class="card" id="Abilities">
				<span class="title">Abilities</span>
					<form>
						Ability Name: <input type="text" name="ability1Name"><br>
						Ability Desription: <input type="text" name="ability1Description"><br>
						Add New Ability +<br>
					</form>
			</div>
			<div class="card" id="Actions">
				<span class="title">Actions</span>
					<form>
						Action Name: <input type="text" name="action1Name"><br>
						Action Desription: <input type="text" name="action1Description"><br>
						Add New Action +<br>
					</form>
			</div>
			
			<div class="card" id="LegendaryLairAction">
				<span class="title">Legendary and Lair Action</span>
					<form>
						Legendary Action Name: <input type="text" name="action1Name"><br>
						Legendary Action Desription: <input type="text" name="action1Description"><br>
						Add New Legendary Action +<br>
						<br>
						Lair Action Name: <input type="text" name="action1Name"><br>
						Lair Action Desription: <input type="text" name="action1Description"><br>
						Add New Lair Action +<br>
					</form>	
			</div>
			
			<div class="card" id="Fluff">
				<span class="title">Extra Background and Fluff</span>
					<form>
						Background Information and Fluff: <input type="text" name="fluff"><br>
					</form>
			</div>
			
			<div class="card" id="submit">
				<form>
					<input type="submit" value="Submit">
				</form>
			</div>
			
		</div>
   </body>
   
</html>