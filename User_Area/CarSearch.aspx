<%@ Page Title="" Language="C#" MasterPageFile="~/User_Area/MasterPageUserArea.master" AutoEventWireup="true" CodeFile="CarSearch.aspx.cs" Inherits="User_Area_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <div class="row search-boxes-row">
        <div class="col-10">
            <div class="row">
                <div class="col-4">
                    <asp:Label ID="Label1" runat="server" Text="Make"></asp:Label>
                    <asp:TextBox ID="txtMake" runat="server"></asp:TextBox>
                </div>
                <div class="col-4">
                    <asp:Label ID="Label3" runat="server" Text="Model"></asp:Label>
                    <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
                </div>
                <div class="col-4">
                    <asp:Label ID="Label2" runat="server" Text="Color"></asp:Label>
                    <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-2">
            
            <asp:Button ID="btnSeachCars"  runat="server" Text="Search" OnClick="btnSeachCars_Click" />
            <asp:Button ID="btnClearSearch"  runat="server" Text="Clear Search" OnClick="btnClearSearch_OnClick" />
        </div>
        
    </div>
    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" EditRowStyle-VerticalAlign="Middle" RowStyle-VerticalAlign="Middle">
        <Columns>
             
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-CssClass="table-image"></asp:ImageField>
            <asp:BoundField DataField="Make" HeaderText="Make" />

            <asp:BoundField DataField="Year" HeaderText="Year" />
            <asp:BoundField DataField="Model" HeaderText="Model" />
            <asp:BoundField DataField="Color" HeaderText="Color" />
            <asp:BoundField ControlStyle-CssClass="rowStyle" DataField="Engine" HeaderText="Enging" />

                              

        </Columns>

    </asp:GridView>
</asp:Content>

