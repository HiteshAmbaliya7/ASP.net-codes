<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CalendarcontrolExample.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Calendar ID="cal1" runat="server" 
            OnDayRender="cal1_DayRender"></asp:Calendar>
    </div>
        <div>
            <asp:Button ID="btnclick" runat="server"
                 Text="Get Date" OnClick="btnclick_Click" />
        </div>
        <div>
            <asp:Label ID="lbldate" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
