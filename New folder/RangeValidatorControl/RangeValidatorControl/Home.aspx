<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RangeValidatorControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>    
        <asp:RangeValidator ID="rng1" runat="server"
             ControlToValidate="txtdate"
             MinimumValue="01-01-2026"
             MaximumValue="12-31-2026"
             Type="Date"
             ErrorMessage="Enter Date Between 01-01-2026 to 31-12-2026"
             ForeColor="Red"></asp:RangeValidator>
    </div>
    </form>
</body>
</html>
