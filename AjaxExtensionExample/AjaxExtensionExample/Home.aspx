<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AjaxExtensionExample.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="scr1" runat="server"></asp:ScriptManager>    
        <asp:UpdatePanel ID="upd1" runat="server">
            <ContentTemplate>
                <div>
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </div>
                <div>
                    <asp:Button ID="btnclick" runat="server" Text="Click" OnClick="btnclick_Click" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="up1" runat="server">
            <ProgressTemplate>
                Loading...... Please Wait
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>
    </form>
</body>
</html>
