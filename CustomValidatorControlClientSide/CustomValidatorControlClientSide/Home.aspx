<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CustomValidatorControlClientSide.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtevennumber" runat="server"></asp:TextBox>    
        <asp:CustomValidator ID="cust1"
             runat="server"
             ControlToValidate="txtevennumber"
             ClientValidationFunction="checkevennumber"
             ErrorMessage="Please Enter Even Number."
             ForeColor="Red"></asp:CustomValidator>
    </div>
        <div>
            <asp:Button ID="btnclick" runat="server"
                 Text="Click" />
        </div>
    </form>
</body>
</html>
<script>
    function checkevennumber(source, args) {
        var n = parseInt(args.Value);
        if (n % 2 == 0)
            args.IsValid = true;
        else
            args.IsValid = false;
    }
</script>