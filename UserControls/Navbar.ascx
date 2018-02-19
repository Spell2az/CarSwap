<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Navbar.ascx.cs" Inherits="UserControls_header" %>

<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
       
    <asp:Panel ID="Navigation" CssClass="nav navbar navbar-expand-lg navbar-light" runat="server" >
        <%--<a href="#"><span class="title">Car Swap</span></a>--%>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span id="icon-menu" class="navbar-toggler-icon "></span>
        </button>
       
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="navbar-nav mr-auto">
         <a class="nav-brand" href="#">Car Swap</a>
        <div class="spacer"></div>
        <a href="#">Wishlist</a>
        <a href="#">Offers</a>
        <a href="#">Membership</a>
        <a href="#" id="loginOpen">Login</a>
        <a href="#signUp">Signup</a>
        </div>
        </div>
    </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>

