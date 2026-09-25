<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RadioButtonControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButton ID="rbtmale" GroupName="gender" 
            runat="server" AutoPostBack="true"
             Text="Male" OnCheckedChanged="rbtmale_CheckedChanged" />
        &nbsp;&nbsp;+

        <asp:RadioButton ID="rbtfemale" GroupName="gender" 
            runat="server" AutoPostBack="true"
             Text="Female" OnCheckedChanged="rbtfemale_CheckedChanged" />    
    </div>
    </form>
</body>
</html>
