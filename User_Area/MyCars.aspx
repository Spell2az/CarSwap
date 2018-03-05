<%@ Page Title="" Language="C#" MasterPageFile="~/User_Area/MasterPageUserArea.master" AutoEventWireup="true" CodeFile="MyCars.aspx.cs" Inherits="User_Area_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <h1>My cars</h1>

    <table class="table">
    <asp:Repeater ID="Repeater1"  runat="server">
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Literal ID="Literal2" Text='<%# Eval("make") %>' runat="server"></asp:Literal>
                </td>
                <td>
                    <asp:Literal ID="Literal1" Text='<%# Eval("model") %>' runat="server"></asp:Literal>
                </td>
                <td> <asp:LinkButton OnClick="DeleteCarHandler" CommandArgument='<%# Eval("Id") %>' runat="server" Text="Delete"/> </td>
                <td> <asp:LinkButton OnClick="EditCarHandler" CommandArgument='<%# Eval("Id") %>' runat="server" Text="Edit"/> </td>
               
            </tr>
        </ItemTemplate>

    </asp:Repeater>
    </table>
    </ContentTemplate>

</asp:UpdatePanel>
</asp:Content>

