<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="update.aspx.vb" Inherits="Sales_Staff_By_Tyler_Hunt.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Sales Staff Information</h1>
    
    </div>
        <asp:DetailsView ID="dv_SalesStaff" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" DataSourceID="Company_DB" ForeColor="#333333" GridLines="None" Height="50px" Width="464px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name">
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name">
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="Full_Time" HeaderText="Full Time" SortExpression="Full_Time">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CheckBoxField>
                <asp:BoundField DataField="Hire_Date" HeaderText="Hire Date" SortExpression="Hire_Date">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" DataFormatString="{0:c}">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="Company_DB" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyDB_ConnectionString %>" SelectCommand="SELECT * FROM [SalesStaff]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [SalesStaff] WHERE [ID] = @original_ID AND [Last_Name] = @original_Last_Name AND [First_Name] = @original_First_Name AND [Full_Time] = @original_Full_Time AND [Hire_Date] = @original_Hire_Date AND [Salary] = @original_Salary" InsertCommand="INSERT INTO [SalesStaff] ([ID], [Last_Name], [First_Name], [Full_Time], [Hire_Date], [Salary]) VALUES (@ID, @Last_Name, @First_Name, @Full_Time, @Hire_Date, @Salary)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [SalesStaff] SET [Last_Name] = @Last_Name, [First_Name] = @First_Name, [Full_Time] = @Full_Time, [Hire_Date] = @Hire_Date, [Salary] = @Salary WHERE [ID] = @original_ID AND [Last_Name] = @original_Last_Name AND [First_Name] = @original_First_Name AND [Full_Time] = @original_Full_Time AND [Hire_Date] = @original_Hire_Date AND [Salary] = @original_Salary">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Last_Name" Type="String" />
                <asp:Parameter Name="original_First_Name" Type="String" />
                <asp:Parameter Name="original_Full_Time" Type="Boolean" />
                <asp:Parameter Name="original_Hire_Date" Type="DateTime" />
                <asp:Parameter Name="original_Salary" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Full_Time" Type="Boolean" />
                <asp:Parameter Name="Hire_Date" Type="DateTime" />
                <asp:Parameter Name="Salary" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Full_Time" Type="Boolean" />
                <asp:Parameter Name="Hire_Date" Type="DateTime" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Last_Name" Type="String" />
                <asp:Parameter Name="original_First_Name" Type="String" />
                <asp:Parameter Name="original_Full_Time" Type="Boolean" />
                <asp:Parameter Name="original_Hire_Date" Type="DateTime" />
                <asp:Parameter Name="original_Salary" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:LinkButton ID="lnkBtn_Logout" runat="server">Log Out</asp:LinkButton>
        <br />
    </form>
</body>
</html>
