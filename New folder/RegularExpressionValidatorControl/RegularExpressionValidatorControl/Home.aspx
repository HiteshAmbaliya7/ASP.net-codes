<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RegularExpressionValidatorControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <span>Check Mobile Number</span>
    </div>
        <div>
            <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regexmobile"
                 runat="server"
                 ControlToValidate="txtmobile"
                 ValidationExpression="^[0-9]{10}$"
                 ErrorMessage="Please Enter Valid Mobile Number"
                 ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:Button ID="btnclick" runat="server"
                 Text="click" />
        </div>
    </form>
</body>
</html>
