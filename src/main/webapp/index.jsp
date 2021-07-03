<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FIX, curated coffee components</title>

    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,600" type="text/css" rel="stylesheet">
    <link href="main.css" rel="stylesheet">
	
   
  </head>
  
  <body>
	  <div id="sign-in-link" style="display:none;" ></div>
	  <div><input class="sfid-button sfid-wide sfid-mb16" style="float:left;" onclick="openPopup();"  value="custom Login"></div><div id="logoutDiv" style="display:none;position: absolute;top: 20px;right: 20px;">
		  <a  onclick="window.location.href=" >Logout</a>
	  </div>
	  <div id="resetDiv" style="display:none;position: absolute;top: 20px;right: 400px;">
		  <a  href="https://testhubidp-developer-edition.ap24.force.com/idpDemo/apex/ChangePassword?retURL=https://identitytestingsite2.herokuapp.com/" >Reset Password</a>
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
	<div id="sign-in-link1" style="display:none;position: absolute; top: 20px;right: 20px;"></div>

	
	<script>
		let newWindow ;
		function openPopup(){
			let params = `scrollbars=no,resizable=no,status=no,location=no,toolbar=no,menubar=no,
			width=600,height=300,left=100,top=100`;

			newWindow = open('https://viatrisconnect.force.com/services/oauth2/authorize?response_type=code&client_id=3MVG9lsAlIP.W_V9otvIK.bMmeXjXYwNfGR5HMtRM4sNDxzmLG3UudlM1ShP3Nw70UJfMHnODa0Dp99UjpiYh&redirect_uri=https://viatrisidentitytesting.herokuapp.com/_callback&state=https://viatrisidentitytesting.herokuapp.com', 'test', params);
		}
	function customSubmit(){
		var usName = document.getElementById('local-username').value;
		var psswd = document.getElementById('local-password').value;
		//alert(usName);
		document.getElementById('sfid-username').value = usName+'.gulf';
		document.getElementById('sfid-password').value = psswd;
		 SFIDWidget.authenticate();
		
	}

	function onLogin(identity) {
		
		var targetDiv = document.getElementById("sign-in-link");	
		newWindow.close();
		
		console.log('login successfull');
				
		if(targetDiv){
			targetDiv.style.display ='none';
		}
		document.getElementById("logoutDiv").style.display = "block";
		document.getElementById("resetDiv").style.display = "block";
		
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
		document.getElementById("resetDiv").style.display = "none";

	}


	</script>
	
  </body>
</html>
