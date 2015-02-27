<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="try.aspx.vb" Inherits="PlatformTechProject._try" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

    <div id="slider1_container" style="position: relative; top: 0px; left: 0px; width: 600px; height: 300px;">
    <!-- Slides Container -->
    <div u="slides" style="cursor: move; position: absolute; overflow: hidden; left: 0px; top: 0px; width: 600px; height: 300px;">
        <div><img u="image" src="Jssor.Slider.FullPack/img/home/01.jpg" /></div>
        <div><img u="image" src="Jssor.Slider.FullPack/img/home/02.jpg" /></div>
    </div>
</div>
    <form id="form1" runat="server">
    <div align="center" >
    
       <div> <asp:Label ID="lblCurrentIncome" runat="server" Text="Enter Current Month Income"></asp:Label>
        <asp:TextBox ID="txtCurrentIncome" runat="server" TextMode="Number"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorCurrentMonthIncome" runat="server" ControlToValidate="txtCurrentIncome" ErrorMessage="Current Month Income Required"></asp:RequiredFieldValidator>
       </div>
        <br />

        <div>
        <asp:Label ID="lblPrevious" runat="server" Text="Enter Previous Month Savings"></asp:Label>
        <asp:TextBox ID="txtSavings" runat="server" TextMode="Number"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPreviousSavings" runat="server" ControlToValidate="txtSavings" ErrorMessage="Previous Month Income Required"></asp:RequiredFieldValidator>

        </div>
        <br />

        <div>
        <asp:Label ID="lblCurrentExpenses" runat="server" Text="Enter Current Month Expenses"></asp:Label>
        <asp:TextBox ID="txtExpenses" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCurrentExpenses" runat="server" ControlToValidate="txtExpenses" ErrorMessage="Current Month Expenses Required"></asp:RequiredFieldValidator>
        </div>

        <br />
        <br />

        <div>
        <asp:Button ID="btnCompute" runat="server" Text="Compute" />
        </div>
        <br />
        <br />
        <div> <asp:Label ID="lblAnswer" runat="server"></asp:Label></div>
        <br />
    
    </div>
    </form>
</body>
</html>
