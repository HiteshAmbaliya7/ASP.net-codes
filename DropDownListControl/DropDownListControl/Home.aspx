<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DropDownListControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlcourse" AutoPostBack="true" runat="server"
             OnSelectedIndexChanged="ddlcourse_SelectedIndexChanged">
            <asp:ListItem Text="----Select Course-----" Value=""
                 disabled></asp:ListItem>
            <asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
            <asp:ListItem Text="BSCIT" Value="BSCIT"></asp:ListItem>
        </asp:DropDownList>    
    </div>
    </form>
</body>
</html>
