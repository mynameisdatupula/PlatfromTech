<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="PlatformTechProject.admin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/style.css"/>
<body>

    <form id="form1" runat="server" method ="post" action="admin.aspx">
        <div>
        <div class="nav navbar-nav navbar-right h4" id="logout" style="padding-right: 5px; padding-top:5px">

    
            <asp:LinkButton ID="linkBtnLogout" OnClick="btnLogout_Click" runat="server" Text="Logout" />
            
        </div>
            <br />
        </div>

        <div>
            <h1>
                Edit Contents
            </h1>
            <asp:ToolkitScriptManager ID="ScriptManager1" runat="server" />
            <asp:TabContainer ID="tabContainerForEditing" runat="server" ActiveTabIndex="0">
                <asp:TabPanel runat="server" HeaderText="Add New Admin" ID="tabPanelAdmin">

                    <ContentTemplate>
                            <div class="form-group">
                            <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="Enter Username" runat="server" />
                            <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Enter Password" TextMode="Password" runat="server" />
                            <br />
                            <asp:Button CssClass="btn btn-info" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" runat="server" />
                            </div>

                         <p id="adminError" style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FF0000">   <% Response.Write(strErrors)%> </p>
                            <br />
                         <p id="adminSuccess"  style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FF0000"> <%Response.Write(strSuccess) %> </p>
                        
                    </ContentTemplate>
                </asp:TabPanel>

                <asp:TabPanel runat="server" HeaderText="Edit Promo" ID="tabPanelPromo">
                    <ContentTemplate>
                        <asp:GridView ID="GridViewPromos" runat="server" CssClass="table table-condensed" >


                        </asp:GridView>
                        
                        <br />
                        <h3>Choose if Edit, Add or Delete</h3>
                        <asp:RadioButton ID="rbtnEdit" runat="server" GroupName="Choices" Checked="True" Text="Edit" AutoPostBack="true" OnCheckedChanged="rbtnEditDelete_CheckedChanged"/>
                        <br />
                        <asp:RadioButton ID="rbtnDelete" runat="server" GroupName="Choices" Text="Delete" AutoPostBack="true" OnCheckedChanged="rbtnEditDelete_CheckedChanged"/>
                        <br />
                        <asp:RadioButton ID="rbtnAdd" runat="server" GroupName="Choices" Text="Add" AutoPostBack="true" OnCheckedChanged="rbtnEditDelete_CheckedChanged" />

                         <h4>EDIT</h4>
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtID" placeholder="Enter ID number" TextMode="Number" />
                        <br />
                        <asp:TextBox CssClass="form-control" runat="server" ID ="txtNewName" placeholder ="Enter new name" />
                        <br />
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtNewDescription" placeholder ="Enter new description" TextMode="MultiLine" />
                        <br />
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtNewPrice" placeholder =" Enter new price" />
                        <br />
                        <asp:Button CssClass="btn btn-info" runat="server" ID="btnEditPromo" Text="Edit" OnClick="btnEditPromo_Click" />

                        <p id="EditResult" style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FF0000"><%Response.Write(strEditingResult)%></p>
                        <br />
                        <h4>DELETE</h4>

                        <asp:TextBox CssClass="form-control" ID="txtIDdelete" runat="server" placeholder="Enter ID number" Enabled="false" TextMode="Number" />
                        <br />
                        <asp:Button CssClass="btn btn-info" ID="btnDelete" runat="server" Text="Delete" Enabled="false" OnClick="btnDelete_Click" />
                        <p id="deleteResult" style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FF0000"><%Response.Write(strDeleteResult)%></p>

                        <br />
                        <h4>ADD</h4>
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtAddName" placeholder="Enter Name" />
                        <br />
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtAddDescription" placeholder="Enter Description" TextMode="MultiLine" />
                        </br>
                        <asp:TextBox CssClass="form-control" runat="server" ID="txtAddPrice" placeholder="Enter Price" />
                        </br>
                        <asp:Button CssClass="btn btn-info" runat="server" Text="Add" OnClick="Unnamed_Click" ID="btnAddPromo"/>
                        <p style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FF0000"><%Response.Write(strAddResult)%></p>


                    </ContentTemplate>
                </asp:TabPanel>

                <asp:TabPanel runat="server" HeaderText="Edit Reservations" ID="tabEditReservation">
                    <ContentTemplate>
                        <div id="reservation">
                            <table class="table table-condensed">
                                <tr>
                                    <td>ID</td>
                                    <td>Contact Name</td>
                                    <td>Contact Address</td>
                                    <td>Contact Number</td>
                                     <td>Contact Email</td>
                                    <td>Reservation</td>
                                    <td>Time Of Reservation</td>
                               </tr>


                                 <% PrintReservation()%>


                            </table>
                           
                        </div>


                    </ContentTemplate>

                </asp:TabPanel>

                <asp:TabPanel runat="server" HeaderText="Edit Banner" ID="tabPanelBanner">
                    <ContentTemplate>

                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </ContentTemplate>
                </asp:TabPanel>
            </asp:TabContainer>
        </div>
    </form>

    			<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
				<script type="text/javascript" src="js/bootstrap.js"></script>

</body>
</html>
