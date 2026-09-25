<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TextBoxControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtval" runat="server"
             AutoPostBack="true" OnTextChanged="txtval_TextChanged"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtval2" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
