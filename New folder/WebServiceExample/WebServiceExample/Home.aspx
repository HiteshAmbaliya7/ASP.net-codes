
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebServiceExample.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <sapn>Value 1:</sapn>
    </div>
        <div>
            <asp:TextBox ID="txtval1" runat="server"></asp:TextBox>
        </div>
        <div>
            <span>Value 2:</span>
        </div>
        <div>
            <asp:TextBox ID="txtval2" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnadd" runat="server" Text="Addition" OnClick="btnadd_Click" />
        </div>
    </form>
</body>
</html>
