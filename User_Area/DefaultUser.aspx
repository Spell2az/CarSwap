<%@ Page Title="" Language="C#" MasterPageFile="~/User_Area/MasterPageUserArea.master" AutoEventWireup="true" CodeFile="DefaultUser.aspx.cs" Inherits="User_Area_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>You are logged in!!!</h1>
    
   
    <asp:LinkButton href="CarSearch.aspx" ID="LinkButton1"  runat="server">Go To Search Cars</asp:LinkButton>
</asp:Content>


