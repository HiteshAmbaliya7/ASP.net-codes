<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="changecolorwithoutpostback.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlcolor" runat="server"
             onchange="changecolor(this.value);">
            <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
            <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
            <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
            <asp:ListItem Text="Yellow" Value="Yellow"></asp:ListItem>
        </asp:DropDownList>
    </div>
        <div>
            <asp:Panel ID="pan1" runat="server" BorderWidth="2px">
                <asp:Label ID="lbl1" runat="server" Text="This is panel"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
<script>
    function changecolor(color) {
        document.getElementById("pan1").style.backgroundColor = color;
    }
</script>