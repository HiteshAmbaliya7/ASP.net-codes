<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="wizardcontrolexample.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Wizard ID="wz1" runat="server" OnFinishButtonClick="wz1_FinishButtonClick">
            <WizardSteps>
                <asp:WizardStep ID="stp1" runat="server"
                     Title="Basic Information">
                    <div>
                        <span>First Name:</span>
                    </div>
                    <div>
                        <asp:TextBox ID="txtfnm" runat="server">

                        </asp:TextBox>
                    </div>
                    <div>
                        <span>Last Name:</span>
                    </div>
                    <div>
                        <asp:TextBox ID="txtlastnm" runat="server">

                        </asp:TextBox>
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="step2" runat="server"
                     Title="Credentails">
                    <div>
                        <span>Email:</span>
                    </div>
                    <div>
                        <asp:TextBox ID="txtemail" runat="server">

                        </asp:TextBox>
                    </div>
                    <div>
                        <span>Password:</span>
                    </div>
                    <div>
                        <asp:TextBox ID="txtpassword"
                             TextMode="Password"
                             runat="server"></asp:TextBox>
                    </div>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>    
    </div>
    </form>
</body>
</html>
