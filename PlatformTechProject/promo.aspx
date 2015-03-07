<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="promo.aspx.vb" Inherits="PlatformTechProject.promo" %>

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
								<p><img src="images/for GUI/tinstar.png" width="100%"/></p>
								</center>
						</div>
					</div>

					<div class="container">
					<h2>Resort Packages</h2>
						<table class="table table-condensed" align="center">
							<tr>
								<td><h3>Name</h3></td>
								<td><h3>Description</h3></td>
								<td><h3>Prices</h3></td>
							</tr>
							<tr>
								<td>The Luxury</td>
								<td>1 Bed and 1 Bathroom</td>
								<td>P5,000.00</td>
							</tr>
							<tr>
								<td>The Best</td>
								<td>3 Bed and 1 Bathroom</td>
								<td>P7,000.00</td>
							</tr>
							<tr>
								<td>The Great</td>
								<td>4 Bed and 2 Bathroom</td>
								<td>P8,000.00</td>
							</tr>
						</table>
						<p></p>
						<p></p>
					<h2>Reservation</h2>
					<form id="formReserve" runat="server" >
						  <div class="form-group">
						    <asp:Textbox ID="txtName" runat="server" CssClass="form-control" placeholder="Contact Name"/>
						  </div>
						  <div class="form-group">
                              <asp:Textbox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Contact Address"/>
						    
						  </div>
						  <div class="form-group">
                            <asp:Textbox ID="txtCnum" runat="server" TextMode="Number" CssClass="form-control" placeholder="Contact Number"/>
						    
						  </div>
						  <div class="form-group">
                            <asp:Textbox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Email Address"/>
						    
						  </div>
							  <div class="checkbox">
							    
                                    <asp:CheckBox ID="cbChoices1"  runat="server" Text="The Luxury" Checked ="true" />
						
							    
							  </div>
							  <div class="checkbox">
							    
							       <asp:CheckBox ID="cbChoices2"  runat="server" Text="The Best" />
							    
							  </div>
							  <div class="checkbox">
							    
							        <asp:CheckBox ID="cbChoices3"  runat="server" Text="The Great" />
							
							  </div>

                          <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" />
						 
						  <p></p>
						  <p></p>
					</form>
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
