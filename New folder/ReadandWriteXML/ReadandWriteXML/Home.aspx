<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ReadandWriteXML.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span>FirstName:</span>    
    </div>
        <div>
            <asp:TextBox ID="txtfnm" runat="server"></asp:TextBox>
        </div>
        <div>
            <span>LastName:</span>
        </div>
        <div>
            <asp:TextBox ID="txtlnm" runat="server"></asp:TextBox>
        </div>
        <div>
            <span>City:</span>
        </div>
        <div>
            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnwrite" runat="server"
                 Text="WriteXML" OnClick="btnwrite_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnread" runat="server"
                 Text="ReadXML" OnClick="btnread_Click" />
        </div>
        <div>
            <asp:GridView ID="gvstudent"
                 runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
