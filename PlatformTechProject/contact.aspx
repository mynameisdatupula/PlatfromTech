<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="contact.aspx.vb" Inherits="PlatformTechProject.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <title>TinStar Resort</title>
			<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
			<link rel="stylesheet" href="css/bootstrap.min.css"/>
			<link rel="stylesheet" href="css/style.css"/>

    <script src="Jssor.Slider.FullPack/js/jquery-1.9.1.min.js"></script>
    <script src="Jssor.Slider.FullPack/js/jssor.slider.mini.js"></script>
    <script src="Jssor.Slider.FullPack/js/jssor.slider.min.js"></script>
    <script src="Jssor.Slider.FullPack/js/jssor.slider.js"></script>
    <script src="Jssor.Slider.FullPack/js/jssor.slider.debug.min.js"></script>
    <script src="Jssor.Slider.FullPack/js/jssor.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var options = { $AutoPlay: true };
            var jssor_slider1 = new $JssorSlider$('slider1_container', options);
        });
    </script>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
					
					<div class="container">

					 <a href="index.aspx" class="navbar-brand">TinStar Resort</a>

						<button class="navbar-toggle" data-toggle = "collapse" data-target = ".navHeaderCollapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>

							<div class="collapse navbar-collapse navHeaderCollapse">
								
								<ul class="nav navbar-nav navbar-right">
								
									<li><a href="promo.aspx">Promotion</a></li>
									<li><a href="about.aspx">About</a></li>
									<li><a href="contact.aspx">Contact Us</a></li>

										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown">Social Media<b class="caret"></b> </a>
												<ul class="dropdown-menu">
													<li><a href="#">Facebook</a></li>
													<li><a href="#">Tweeter</a></li>
													<li><a href="#">Gmail</a></li>
													<li><a href="#">Yahoo</a></li>
												</ul>
										</li>

								</ul>

							</div>

					</div>

				</div>

					<div class="container">
						<div class="jumbotron">
								<center>
								<p><img src="images/for GUI/tree.jpg" width="100%"/></p>
								</center>
						</div>
					</div>

					<div class="container">

							<form>
							  <div class="form-group">
							    <label for="exampleInputEmail1">Email address</label>
							    <input type="email" class="form-control" id="exampleInputEmail1"/>
							  </div>
							  <div class="form-group">
							  <label for="inquiry">Inquiry</label>
							  <textarea class="form-control" rows="3"></textarea>
							  </div>
							  <button type="submit" class="btn btn-primary">Submit</button>
							</form>
							<p></p>
							<p></p>
							<h3>For more comment and suggestions please contact us at: 36543-32 to (35)</h3>

					</div>

					<div class="navbar navbar-default navbar-static-bottom">
						<div class="container">
							<p class="navbar-text pull-left">Copyright 2015</p>
							<a class="navbar-btn btn-info btn pull-right">Subscribe on Mario Brothers</a>
						</div>
					</div>

							<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
							<script type="text/javascript" src="js/bootstrap.js"></script>

</body>
</html>
