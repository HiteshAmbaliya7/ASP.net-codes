<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CheckBoxListControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="chkcourse" runat="server">
            <asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
            <asp:ListItem Text="BSCIT" Value="BSCIT"></asp:ListItem>
            <asp:ListItem Text="BBA" Value="BBA"></asp:ListItem>
            <asp:ListItem Text="BCOM" Value="BCOM"></asp:ListItem>
        </asp:CheckBoxList>    
    </div>
        <div>
            <asp:Button ID="btnclick" runat="server" Text="Click" OnClick="btnclick_Click" />
        </div>
        <div>
            <asp:Label ID="lblmsg" runat="server" Font-Size="X-Large"></asp:Label>
        </div>
    </form>
</body>
</html>
