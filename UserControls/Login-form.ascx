<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login-form.ascx.cs" Inherits="UserControls_Login_form" %>
<div id="login" class="login">
    <asp:Panel runat="server" >
        
        <a id="loginClose" href="#">
            <i class="icon ion-ios-close-outline login-close"></i>
        </a>
        <div class="login-group">
            <asp:Label runat="server">Email</asp:Label>
            <asp:TextBox type="email" ID="txtEmail" runat="server"></asp:TextBox>
        </div>
        <div class="login-group">
            <asp:Label runat="server">Password</asp:Label>
            <asp:TextBox type="password" ID="txtPassword" runat="server"></asp:TextBox>
        </div>
        <div class="login-message">
            <asp:Label ID="lblLoginMessage" runat="server"></asp:Label>
        </div>
        <div class="login-btn-group">
            <asp:Button ID="Button2" CssClass="login-btn" runat="server" Text="Login" OnClick="Button2_Click" />
            <asp:Button ID="Button1"  CssClass="login-btn" runat="server" Text="Resend Password" />
        </div>
        
    </asp:Panel>
</div>
