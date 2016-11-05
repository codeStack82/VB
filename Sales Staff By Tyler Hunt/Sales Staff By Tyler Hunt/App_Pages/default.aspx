<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="Sales_Staff_By_Tyler_Hunt._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style2 {
            text-align: right;
            width: 149px;
        }
        .auto-style3 {
            width: 149px;
        }
        .auto-style4 {
            width: 12px;
        }
        .auto-style5 {
            width: 352px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
    </div>
        <table  class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <h1 style="text-align: center">Login Page</h1>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <h3>Email Address: </h3>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_Email" runat="server" Width="300px" Wrap="False" Font-Size="Medium"></asp:TextBox><br />
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="The email must be in a valid format: abcd@xyz.com" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="req_EmailField" runat="server" ErrorMessage="Email Required" ControlToValidate="txt_Email" Display="Dynamic" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <h3>Zip Code :</h3>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_Zip" runat="server" Width="300px" Wrap="False" Font-Size="Medium"></asp:TextBox><br />
                    <asp:RangeValidator ID="valid_Zip" runat="server" ControlToValidate="txt_Zip" Display="Dynamic" ErrorMessage="The Zip code must be between 10000 and 99999." Font-Size="Small" ForeColor="Red" MaximumValue="99999" MinimumValue="10000" Type="Integer"></asp:RangeValidator>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="req_ZipField" runat="server" ErrorMessage="Zip Code Required" ControlToValidate="txt_Zip" Display="Dynamic" Font-Size="Medium" ForeColor="Red">*</asp:RequiredFieldValidator>
                   
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btn_Submit" runat="server" Text="Login" Width="200px" Font-Size="Medium" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lbl_Error" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
