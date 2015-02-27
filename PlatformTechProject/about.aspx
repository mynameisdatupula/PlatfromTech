<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="about.aspx.vb" Inherits="PlatformTechProject.about" %>

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
									<li><a href="contact.aspx">About</a></li>
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

					<h1>The Brothers</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis pharetra metus. Nulla quis nisi orci. Morbi vulputate dignissim convallis. Quisque est purus, pulvinar feugiat mollis at, maximus eu magna. Suspendisse ipsum elit, tincidunt vel enim vehicula, sagittis congue turpis. Morbi porttitor convallis felis eu egestas. Duis sagittis odio in enim vestibulum, sed molestie mi semper. Aliquam ullamcorper, sapien ac semper fringilla, enim massa sollicitudin metus, accumsan ultrices mi urna aliquam lorem. Aliquam ultricies fermentum magna, in vulputate nibh posuere ac. Curabitur consequat sem nec purus placerat aliquam. Fusce varius est eu facilisis sagittis. Morbi pharetra lorem ut lorem scelerisque, vitae commodo lectus fringilla.</p>
					<p>Ut mollis ex nisi, sit amet ultricies diam consectetur et. Nulla luctus laoreet neque, id dapibus massa porta eget. Pellentesque fringilla vestibulum molestie. Curabitur ullamcorper purus nec molestie convallis. Quisque euismod id lacus id maximus. Vivamus a metus urna. Maecenas dapibus nunc a augue rhoncus auctor. Maecenas ex eros, maximus vitae lacus nec, placerat scelerisque leo. Aenean id elit vehicula, interdum risus vel, efficitur arcu.

Ut gravida non diam sit amet interdum. Praesent dignissim leo quis tortor aliquam hendrerit. Pellentesque nibh mauris, molestie sed erat sodales, dapibus tempus felis. Vestibulum sollicitudin vel ipsum in viverra. Praesent a lectus non felis convallis vestibulum. Duis pellentesque, tellus vel lobortis vulputate, libero risus hendrerit lectus, vel tempor lectus ligula eget nibh. Donec ornare risus vel scelerisque posuere. Sed cursus consectetur finibus.</p>

					<h1>The Mario</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis pharetra metus. Nulla quis nisi orci. Morbi vulputate dignissim convallis. Quisque est purus, pulvinar feugiat mollis at, maximus eu magna. Suspendisse ipsum elit, tincidunt vel enim vehicula, sagittis congue turpis. Morbi porttitor convallis felis eu egestas. Duis sagittis odio in enim vestibulum, sed molestie mi semper. Aliquam ullamcorper, sapien ac semper fringilla, enim massa sollicitudin metus, accumsan ultrices mi urna aliquam lorem. Aliquam ultricies fermentum magna, in vulputate nibh posuere ac. Curabitur consequat sem nec purus placerat aliquam. Fusce varius est eu facilisis sagittis. Morbi pharetra lorem ut lorem scelerisque, vitae commodo lectus fringilla.</p>
					<p>Ut mollis ex nisi, sit amet ultricies diam consectetur et. Nulla luctus laoreet neque, id dapibus massa porta eget. Pellentesque fringilla vestibulum molestie. Curabitur ullamcorper purus nec molestie convallis. Quisque euismod id lacus id maximus. Vivamus a metus urna. Maecenas dapibus nunc a augue rhoncus auctor. Maecenas ex eros, maximus vitae lacus nec, placerat scelerisque leo. Aenean id elit vehicula, interdum risus vel, efficitur arcu.

Ut gravida non diam sit amet interdum. Praesent dignissim leo quis tortor aliquam hendrerit. Pellentesque nibh mauris, molestie sed erat sodales, dapibus tempus felis. Vestibulum sollicitudin vel ipsum in viverra. Praesent a lectus non felis convallis vestibulum. Duis pellentesque, tellus vel lobortis vulputate, libero risus hendrerit lectus, vel tempor lectus ligula eget nibh. Donec ornare risus vel scelerisque posuere. Sed cursus consectetur finibus.</p>

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
