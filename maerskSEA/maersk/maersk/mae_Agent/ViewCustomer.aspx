<%@ Page Title="View customer" Language="C#" MasterPageFile="~/mae_Agent/agentMasterPage.Master" AutoEventWireup="true" CodeBehind="ViewCustomer.aspx.cs" Inherits="maersk.mae_Agent.ViewCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %> </h2>
    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">

                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                    <p class="text-danger">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                </asp:PlaceHolder>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="custId">
                    <Columns>
                        <asp:BoundField DataField="custId" HeaderText="custId" ReadOnly="True" SortExpression="custId"></asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                        <asp:BoundField DataField="number" HeaderText="number" SortExpression="number"></asp:BoundField>
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode"></asp:BoundField>
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                    SelectCommand="SELECT * FROM [customer] WHERE ([agentUsername] = @agentUsername)" ProviderName="System.Data.SqlClient">
                    <SelectParameters>
                        <asp:SessionParameter SessionField="agentUsername" Name="agentUsername" Type="String"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>            </div>
        </div>

    </div>
</asp:Content>
