<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="promo.aspx.vb" Inherits="PlatformTechProject.promo" %>

<%@ Import Namespace="MySql.Data" %>
<%@ Import Namespace="MySql.Data.MySqlClient" %>
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
                         
                             <% printTables()
                                 
                                     
                                %>
						</table>
						<p></p>
						<p></p>
					<h2>Reservation</h2>
					<form id="formReserve" runat="server" >
						  <div class="form-group">
						    <asp:Textbox ID="txtName" runat="server" CssClass="form-control" placeholder="Contact Name"/>
                              <asp:RequiredFieldValidator ControlToValidate="txtName"
						  Text="Contact name required" runat="server" ID="requiredName" />


						  </div>
						  <div class="form-group">
                              <asp:Textbox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Contact Address"/>
                              <asp:RequiredFieldValidator ControlToValidate="txtAddress"
						        Text="Address required" runat="server" ID="requiredAddress" />
						    
						  </div>
						  <div class="form-group">
                            <asp:Textbox ID="txtCnum" runat="server" TextMode="Number" CssClass="form-control" placeholder="Contact Number"/>
						    <asp:RequiredFieldValidator ControlToValidate="txtCnum" 
						     Text="Contact number required" runat="server" ID="requiredNumber" />
						  </div>

						  <div class="form-group">
                            <asp:Textbox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Email Address"/>
						    <asp:RequiredFieldValidator ControlToValidate="txtEmail"
						  Text="Email required" runat="server" ID="requiredEmail" />

						  </div>
                       
                            <div id="CheckBoxTableChoices" runat="server">

                                <asp:CheckBoxList ID="CheckBoxListChoices" runat="server">
                                </asp:CheckBoxList>
                                </div>

                              <p style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FF0000">  <%Response.Write(strRequiredCheck)%> </p>


                         <div><p id="errors" style="font-family: &quot;Trebuchet MS&quot;, &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, &quot;Lucida Sans&quot;, Arial, sans-serif; color: #FF0000"> <%Response.Write(strErrors)%></p></div>
                         <br />
                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" />     
                           </div>
                        <br />
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
