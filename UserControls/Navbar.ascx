<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Navbar.ascx.cs" Inherits="UserControls_header" %>

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
     <i id="show-bars" class="icon ion-android-menu"></i>
    <asp:Panel ID="Navigation" CssClass="nav" runat="server" ForeColor="White">
        <%--<a href="#"><span class="title">Car Swap</span></a>--%>
       
       
         <i id="hide-arrow" class="icon ion-ios-arrow-right" ></i>
        
        <a href="#">Wishlist</a>
        <a href="#">Offers</a>
        <a href="#">Membership</a>
        <a href="#" id="loginOpen">Login</a>
        <a href="#signUp">Signup</a>
        
        
    </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>

