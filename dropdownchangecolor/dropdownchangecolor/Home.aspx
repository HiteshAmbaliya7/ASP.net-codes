<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="dropdownchangecolor.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body runat="server" id="body1">
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlcolor" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlcolor_SelectedIndexChanged">
            <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
            <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
            <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
        </asp:DropDownList>    
    </div>
    </form>
</body>
</html>
