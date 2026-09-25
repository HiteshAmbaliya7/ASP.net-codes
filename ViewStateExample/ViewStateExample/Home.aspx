<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="Home.aspx.cs" Inherits="ViewStateExample.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblcounter" runat="server"></asp:Label>
    </div>
        <div>
            <asp:Button ID="btnclick" runat="server"
                 Text="Click" OnClick="btnclick_Click" />
        </div>
    </form>
</body>
</html>
