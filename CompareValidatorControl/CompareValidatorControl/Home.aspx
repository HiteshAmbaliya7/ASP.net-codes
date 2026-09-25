<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CompareValidatorControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtpassword" runat="server"
             TextMode="Password"></asp:TextBox>    
        <asp:TextBox ID="txtcnfpassword" runat="server"
             TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="cmp1" runat="server"
             ControlToValidate="txtcnfpassword"
             ControlToCompare="txtpassword"
             ErrorMessage="Password and Confirm password not matched"
             ForeColor="Red"></asp:CompareValidator>
    </div>
    </form>
</body>
</html>
