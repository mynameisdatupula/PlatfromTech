<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="PlatformTechProject.index" %>

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
	<!--<link rel="stylesheet" href="css/style.css"/>-->
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
													<li><a href="https://www.facebook.com/pages/Tinstar-Resorts-Sports-Leisure/1386078074980930">Facebook</a></li>
													<li><a href="#">Tweeter</a></li>
													<li><a href="#">Gmail</a></li>
													<li><a href="#">Yahoo</a></li>
												</ul>
										</li>

								</ul>

							</div>

					</div>

				</div>

                       <br />
                        
                        
					<div class="container" >

						<!--<div id="jumbotron" style="margin:0 auto;">
								
							<p><img src="Jssor.Slider.FullPack/img/home/01.jpg" width="100%"/></p>
                            <p><img src="Jssor.Slider.FullPack/img/home/02.jpg" width="100%"/></p>
								
						</div>-->
                        <div class="jumbotron" style="padding: 30px 0px 40px 0px;">
                            <div  id="slider1_container" style="margin:0 auto; position: relative; top: 0px; left: 0px; width: 950px; height: 480px;">
                           
                                <!-- Slides Container -->
                                <div u="slides" style="cursor: move;  overflow: hidden; left: 0px; top: 0px; width: 950px; height: 480px;">
                                    <div><img u="image" src="images/for slider/resort10.jpg" /></div>
                                    <div><img u="image" src="images/for slider/resort4.jpg" /></div>
                                    <div><img u="image" src="images/for slider/resort9.jpg" /></div>
                                    <div><img u="image" src="images/for slider/resort11.jpg" /></div>
                                    <div><img u="image" src="images/for slider/resort12.jpg" /></div>
                                </div>
                            </div>
                        </div>
					</div>
                 
                     </br>
                     </br>
                    

					<div class="container">
						<center>
						<div class="row">
							<div class="col-md-4">
								<p><img src="images/for GUI/resort13.jpg" class="img-thumbnail" width="88%"/></p>
								<h4><a href="#">Dip in a relaxing water from the mountains</a></h4>
							</div>

							<div class="col-md-4">
								<p><img src="images/for GUI/Hotel-Room1.jpg" class="img-thumbnail"/></p>
								<h4><a href="#">Rest in a home based design room</a></h4>
							</div>

							<div class="col-md-4">
								<p><img src="images/for GUI/restaurant.jpeg" class="img-thumbnail"/></p>
								<h4><a href="#">Dine and enjoy our native's delicacies</a></h4>
							</div>

							<div class="col-md-4">
								<p><img src="images/for GUI/resort9.jpg" class="img-thumbnail"/></p>
								<h4><a href="#">Play in our indoor park with your kids</a></h4>
							</div>


							<div class="col-md-4">
								<p><img src="images/for GUI/resort8.jpg" class="img-thumbnail"/></p>
								<h4><a href="#">Enjoy a refreshing touch of our pool</a></h4>
							</div>

							<div class="col-md-4">
								<p><img src="images/for GUI/love.jpg" class="img-thumbnail"/></p>
								<h4><a href="#">Have a friendly in our billiard set</a></h4>
							</div>
						</div>
						</center>

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
