<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SignUp.ascx.cs" Inherits="UserControls_WebUserControl" %>
<div id="signUp" class="signupForm">
    <asp:Panel runat="server" >
        
      
        <div class="login-group">
            <asp:Label runat="server">Email</asp:Label>
            <asp:TextBox CssClass="signup-input" type="email" ID="txtEmail" runat="server"></asp:TextBox>
        </div>
        <div class="login-group">
            <asp:Label runat="server">First name</asp:Label>
            <asp:TextBox  CssClass="signup-input"  type="text" ID="txtFirstName" runat="server"></asp:TextBox>
        </div>
        <div class="login-group">
            <asp:Label runat="server">Last name</asp:Label>
            <asp:TextBox  CssClass="signup-input"  type="text" ID="txtLastName" runat="server"></asp:TextBox>
        </div>
        <div class="login-group">
            <asp:Label runat="server">Password</asp:Label>
            <asp:TextBox  CssClass="signup-input"  type="password" ID="txtPassword" runat="server"></asp:TextBox>
        </div>
        <div class="login-btn-group">
            <asp:Button ID="Button3" OnClick="Button3_OnClick" CssClass="login-btn signup-btn" runat="server" Text="Sign up" />
           
        </div>
        
    </asp:Panel>
</div>

