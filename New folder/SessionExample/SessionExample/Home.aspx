<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SessionExample.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span>UserName:</span>
    </div>
        <div>
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </div>
        <div>
            <span>Password:</span>
        </div>
        <div>
            <asp:TextBox ID="txtpassword" runat="server"
                 TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnlogin" runat="server"
                 Text="Login" OnClick="btnlogin_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncancel" runat="server"
                 Text="Cancel" />
        </div>
    </form>
</body>
</html>
