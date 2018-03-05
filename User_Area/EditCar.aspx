<%@ Page Title="" Language="C#" MasterPageFile="~/User_Area/MasterPageUserArea.master" AutoEventWireup="true" CodeFile="EditCar.aspx.cs" Inherits="User_Area_EditCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="lblMake" runat="server" Text="Make"></asp:Label>
    <asp:TextBox ID="txtMake" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblModel" runat="server" Text="Model"></asp:Label>
    <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblYear" runat="server" Text="Year"></asp:Label>
    <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblColor" runat="server" Text="Color"></asp:Label>
    <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblEngine" runat="server" Text="Engine"></asp:Label>
    <asp:TextBox ID="txtEngine" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
    <asp:TextBox ID="txtDescription" Rows="3" runat="server"></asp:TextBox>
    <br/>
    <asp:Image ID="Image1" runat="server" />
    <asp:FileUpload ID="FileUpload1" runat="server" />
</asp:Content>

