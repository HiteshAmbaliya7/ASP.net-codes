<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ValidationSummaryControl.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span>UserName</span>    
    </div>
        <div>
            <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requname"
                 runat="server"
                 ControlToValidate="txtuname"
                 ErrorMessage="Please Enter UserName."
                 Text="*"
                 ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <span>Password</span>
        </div>
        <div>
            <asp:TextBox ID="txtpassword" runat="server"
                 TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqpassword" runat="server"
                 ControlToValidate="txtpassword"
                 ErrorMessage="Please Enter Password"
                 Text="*"
                 ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <span>Confirm Password</span>
        </div>
        <div>
            <asp:TextBox ID="txtcnfpassword" runat="server"
                 TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqcnfpassword" runat="server"
                 ControlToValidate="txtcnfpassword"
                 ErrorMessage="Please Enter Confirm Password"
                 Text="*"
                 ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cmppass" runat="server"
                 ControlToValidate="txtcnfpassword"
                 ControlToCompare="txtpassword"
                 ErrorMessage="Password and Confirm password not matched."
                 Text="*"
                 ForeColor="Red"></asp:CompareValidator>
        </div>
        <div>
            <asp:Button ID="btnclick" runat="server"
                 Text="Click" />
        </div>
        <div>
            <asp:ValidationSummary ID="validsum"
                 runat="server"
                 ShowMessageBox="true"
                 ShowSummary="true"
                 HeaderText="Please Resolve Following Erros."
                 DisplayMode="BulletList"
                 ForeColor="Red" />
        </div>
    </form>
</body>
</html>
