<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Area.aspx.cs" Inherits="Area" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Add Area Details<br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="200px" Width="400px">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="AreaName" HeaderText="AreaName" SortExpression="AreaName" />
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:NTDBConnectionString %>" DeleteCommand="DELETE FROM [AreaTable] WHERE [Id] = @original_Id AND (([AreaName] = @original_AreaName) OR ([AreaName] IS NULL AND @original_AreaName IS NULL)) AND (([Latitude] = @original_Latitude) OR ([Latitude] IS NULL AND @original_Latitude IS NULL)) AND (([Longitude] = @original_Longitude) OR ([Longitude] IS NULL AND @original_Longitude IS NULL))" InsertCommand="INSERT INTO [AreaTable] ([AreaName], [Latitude], [Longitude]) VALUES (@AreaName, @Latitude, @Longitude)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [AreaTable]" UpdateCommand="UPDATE [AreaTable] SET [AreaName] = @AreaName, [Latitude] = @Latitude, [Longitude] = @Longitude WHERE [Id] = @original_Id AND (([AreaName] = @original_AreaName) OR ([AreaName] IS NULL AND @original_AreaName IS NULL)) AND (([Latitude] = @original_Latitude) OR ([Latitude] IS NULL AND @original_Latitude IS NULL)) AND (([Longitude] = @original_Longitude) OR ([Longitude] IS NULL AND @original_Longitude IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_AreaName" Type="String" />
                <asp:Parameter Name="original_Latitude" Type="String" />
                <asp:Parameter Name="original_Longitude" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AreaName" Type="String" />
                <asp:Parameter Name="Latitude" Type="String" />
                <asp:Parameter Name="Longitude" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="AreaName" Type="String" />
                <asp:Parameter Name="Latitude" Type="String" />
                <asp:Parameter Name="Longitude" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_AreaName" Type="String" />
                <asp:Parameter Name="original_Latitude" Type="String" />
                <asp:Parameter Name="original_Longitude" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="100%" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="AreaName" HeaderText="AreaName" SortExpression="AreaName" />
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
