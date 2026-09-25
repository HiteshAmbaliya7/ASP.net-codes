<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MenuControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="mnu1" runat="server"
             Orientation="Horizontal"
             StaticMenuStyle-BackColor="#007BFF"
             StaticMenuItemStyle-ForeColor="White"
             DynamicMenuStyle-BackColor="#F8F9FA"
             DynamicMenuItemStyle-ForeColor="Black"
             StaticMenuItemStyle-HorizontalPadding="15"
             StaticMenuItemStyle-VerticalPadding="10">
            <Items>
                <asp:MenuItem Text="Home" 
                    NavigateUrl="~/Home.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Product"
                     NavigateUrl="~/Product.aspx">
                    <asp:MenuItem Text="Laptop"
                         NavigateUrl="~/Product.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Desktop" 
                        NavigateUrl="~/Product.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Dashboard" 
                    NavigateUrl="~/Dashboard.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact Us" 
                    NavigateUrl="~/Contact.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>








    </div>
    </form>
</body>
</html>
