<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FIX, curated coffee components</title>

    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,600" type="text/css" rel="stylesheet">
    <link href="main.css" rel="stylesheet">
	
    <meta name="salesforce-community" content="https://<%= System.getenv("SALESFORCE_COMMUNITY_URL") %>">
    <meta name="salesforce-client-id" content="<%= System.getenv("SALESFORCE_CLIENT_ID") %>">
    <meta name="salesforce-redirect-uri" content="https://<%= System.getenv("SALESFORCE_HEROKUAPP_URL") %>/_callback">
    <meta name="salesforce-mode" content="inline">
    <meta name="salesforce-server-callback" content="true">
    <meta name="salesforce-namespace" content="">
    <meta name="salesforce-target" content="#sign-in-link1">
    <meta name="salesforce-save-access-token" content="false">
    <meta name="salesforce-forgot-password-enabled" content="<%= System.getenv("SALESFORCE_FORGOT_PASSWORD_ENABLED") %>">
    <meta name="salesforce-self-register-enabled" content="<%= System.getenv("SALESFORCE_SELF_REGISTER_ENABLED") %>">
    <meta name="salesforce-login-handler" content="onLogin">
    <meta name="salesforce-logout-handler" content="onLogout">
    <meta name="salesforce-mask-redirects" content="true">
	<link href="https://<%= System.getenv("SALESFORCE_COMMUNITY_URL") %>/servlet/servlet.loginwidgetcontroller?type=css" rel="stylesheet" type="text/css" />
<script src="https://<%= System.getenv("SALESFORCE_COMMUNITY_URL") %>/servlet/servlet.loginwidgetcontroller?type=javascript_widget" async defer></script>
  
  </head>
  
  <body>
	  <div id="sign-in-link1" style="display:none;position: absolute; top: 20px;right: 20px;"></div>
	  <div id="sign-in-link" style="position: absolute; top: 400px;right: 20px;">
		  <div id="sfid-inline-content"><div class="sfid-mb1" id="local-error" role="alert" style="display: none;">We can't log you in. Make sure your username and password are correct.</div>
			  <form onsubmit="customSubmit(); return false">
				  <label for="sfid-username" class="sfid-button-label">Username</label>
				  <input class="sfid-wide sfid-mb12" type="text" name="username" id="local-username" autofocus="autofocus">
				  <label for="sfid-password" class="sfid-button-label">Password</label>
				  <input class="sfid-wide sfid-mb12" type="password" name="password" id="local-password">
				  <input class="sfid-button sfid-wide sfid-mb16" type="submit"  value="Log In">
			  </form>
			  <div id="sfid-selfreg-password">
				<a id="sfid-forgot-password" href="https://testhubidp-developer-edition.ap24.force.com/idpDemo/secur/forgotpassword.jsp?locale=us">Forgot your password?</a>
			  </div>
		</div>
	  </div>
	  <div id="logoutDiv" style="display:none;">
		  <a  onclick="javascript:SFIDWidget.logout();SFIDWidget.cancel();" >Logout</button>
	  </div>
		  
    <header>
      <div class="masthead-elements-row-1">
        <div class="element-left"></div>
        <div class="element-middle">
          <img class="logo" src="images/fix-logotype.png" alt="Fix">
          <br>
          <span class="logo-text">Fine Coffee Kits</span>
        </div>
        <div class="element-right">
        </div>
      </div>
    </header>
    <section class="textured-section">
      <h1>Curated Coffee Components</h1>
      
	
      <ul class="products">
        <li>
          <img class="product-image" src="images/products/071715_Heroku_3270-.jpg" alt="">
          <h3 class="product-name">AeroPress Coffee Maker</h3>
          <div class="product-button"><a id="aero_link" class="btn btn-hot" href="#" onclick="SFIDWidget.login()">Login for more info</a></div>
        </li>
        <li>
          <img class="product-image" src="images/products/071715_Heroku_3263-.jpg" alt="">
          <h3 class="product-name">MSR Reactor 2.5L Stove System</h3>          
          <div class="product-button"><a id="reactor_link" class="btn btn-hot" href="#" onclick="SFIDWidget.login()">Login for more info</a></div>
        </li>
        <li>
          <img class="product-image" src="images/products/071715_Heroku_3302.jpg" alt="">
          <h3 class="product-name">Chemex Classic 6-cup Coffee Maker</h3>
          <div class="product-button"><a id="chemex_link" class="btn btn-hot" href="#" onclick="SFIDWidget.login()">Login for more info</a></div>
        </li>
      </ul>

    </section>
    <section>

      <h1>Complete Brewing Kits</h1>

      <ul class="kits">
        <li>
          <img class="kit-image" src="images/kits/071715_Heroku_3338-Edit-.jpg" alt="">
          <h3 class="kit-name">The Chemex Kit</h3>
        </li>
        <li>
          <img class="kit-image" src="images/kits/071715_Heroku_3353-Edit-.jpg" alt="">
          <h3 class="kit-name">The Pour Over Kit</h3>
        </li>
        <li>
          <img class="kit-image" src="images/kits/071715_Heroku_3346-.jpg" alt="">
          <h3 class="kit-name">The Camper’s Kit</h3>
        </li>
        <li>
          <img class="kit-image" src="images/kits/071715_Heroku_3376-Edit-.jpg" alt="">
          <h3 class="kit-name">The French Press Kit</h3>
        </li>
        <li>
          <img class="kit-image" src="images/kits/071715_Heroku_3385-.jpg" alt="">
          <h3 class="kit-name">The Cold Brew Kit</h3>
        </li>
      </ul>

    </section>
    <footer>

      <div class="trailer-logo">
        <img class="logo" src="images/fix-logotype.png" alt="Fix">
        <br>
        <span class="logo-text">Fine Coffee Kits</span>
      </div>

      <div class="trailer-links">
        <ul class="internal-links">
          <li><a href="https://heroku.github.io/fix">About</a></li>
          <li><a href="https://heroku.github.io/fix">Support</a></li>
          <li><a href="https://heroku.github.io/fix">Contact Us</a></li>
        </ul>
        <ul class="social-links">
          <li><a href="#">
            <img class="social-logo" src="images/social/twitter.png" alt="">
            <span class="social-verb">Follow on</span>
            <span class="social-name">Twitter</span></a></li>
          <li><a href="#">
            <img class="social-logo" src="images/social/facebook.png" alt="">
            <span class="social-verb">Like Us on</span>
            <span class="social-name">Facebook</span></a></li>
          <li><a href="#">
            <img class="social-logo" src="images/social/instagram.png" alt="">
            <span class="social-verb">Follow on</span>
            <span class="social-name">Instagram</span></a></li>
        </ul>
      </div>

    </footer>
	

	
	<script>
	function customSubmit(){
		var usName = document.getElementById('local-username').value;
		var psswd = document.getElementById('local-password').value;
		//alert(usName);
		document.getElementById('sfid-username').value = usName+'.com';
		document.getElementById('sfid-password').value = psswd;
		 SFIDWidget.authenticate();
		
	}

	function onLogin(identity) {
		
		var targetDiv = document.getElementById("sign-in-link");	
		
		
		console.log('login successfull');
				
		if(targetDiv){
			targetDiv.style.display ='none';
		}
		document.getElementById("logoutDiv").style.display = "block";
	}
	
	
	function showIdentityOverlay() {
		
		
	}
	
	
	function onLogout() {
		SFIDWidget.init();
		var targetDiv = document.getElementById("sign-in-link").style.display='block';
		var aero = document.getElementById("aero_link");
		aero.href = "#";
		aero.innerHTML = 'Login for more info';

		var reactor = document.getElementById("reactor_link");
		reactor.href = "#";
		reactor.innerHTML = 'Login for more info';

		var chemex = document.getElementById("chemex_link");
		chemex.href = "#";
		chemex.innerHTML = 'Login for more info';
		document.getElementById("logoutDiv").style.display = "none";

	}


	</script>
	
  </body>
</html>
