<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ImageMapControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageMap ID="imgmap1" runat="server"
             ImageUrl="~/images/myfileroad-sport-vintage-wheel-retro-old.jpg"
             HotSpotMode="Navigate" Height="300px" Width="300px" OnClick="imgmap1_Click">
            <asp:CircleHotSpot X="50" Y="50" Radius="10" NavigateUrl="contact.aspx"
                 AlternateText="Circle"/>
            <asp:RectangleHotSpot Top="120" Left="180"
                 Right="300" Bottom="220" NavigateUrl="contact.aspx"
                 AlternateText="Reactangle" />
            <asp:PolygonHotSpot Coordinates="50,50,150,50,120,120,60,120"
                  NavigateUrl="contact.aspx" AlternateText="polygon" />

        </asp:ImageMap>    
    </div>
        <div>
            <asp:Label ID="lblval" runat="server" Font-Size="X-Large"></asp:Label>
        </div>
    </form>
</body>
</html>
