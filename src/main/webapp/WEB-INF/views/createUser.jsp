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
      <section class="container">
         <div class="login">
            <h1>Create New Username</h1>
            <form method="post" action="index.html">
               <p><input type="text" name="login" value="" placeholder="Username"></p>
               <p><input type="text" name="email" value="" placeholder="Email Address"></p>
               <p><input type="password" name="password" value="" placeholder="Password"></p>
               <p><input type="password" name="confirmPassword" value="" placeholder="Confirm Password"></p>
               <p class="remember_me">
               </p>
               <p class="submit"><input type="submit" name="commit" value="Login"></p>
            </form>
         </div>
         <div class="login-help">
            <p>Already have an Account? <a href="index.html">Click here to login</a>.</p>
         </div>
      </section>
   </body>
</html>