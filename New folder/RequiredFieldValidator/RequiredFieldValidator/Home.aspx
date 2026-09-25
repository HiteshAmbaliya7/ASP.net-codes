<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RequiredFieldValidator.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="req1" runat="server"
             ControlToValidate="txt1"
             ErrorMessage="Please Enter Value into the Field"
             ForeColor="Red"
             Text="*"></asp:RequiredFieldValidator>
    </div>
        <div>
            <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="req2" runat="server"
                 ControlToValidate="txt2"
                 ErrorMessage="Please Enter Value into the field"
                 ForeColor="Red"
                 Text="*"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="btnclick" runat="server" Text="Click" />
        </div>
    </form>
</body>
</html>
