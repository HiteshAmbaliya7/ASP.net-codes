<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CheckBoxControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBox ID="chk1" AutoPostBack="true"
             runat="server"
             Text="BCA" OnCheckedChanged="chk1_CheckedChanged" />
    </div>
    </form>
</body>
</html>
