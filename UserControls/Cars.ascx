<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Cars.ascx.cs" Inherits="UserControls_Cars" %>
<div class="cars">
    <h2 class="cars-heading" id="goToCars">Cars</h2>
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
</div>
