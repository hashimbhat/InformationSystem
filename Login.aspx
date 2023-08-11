<%@ Page Title="About" Language="C#" MasterPageFile="~/SiteOut.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InformationSystem.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="row mb-2">
            <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
             <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>


        </div>
         <div class="row mb-2">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
             <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>
         <div class="row mb-2">
            <asp:Label ID="lblIsRemember" runat="server" Text="Remember Me?"></asp:Label>
             <asp:CheckBox ID="chkIsRemember" runat="server" />
        </div>
        <div class="row mb-4">
            <asp:Button ID="btnLogIn" runat="server" Text="LogIn"  OnClick="btnLogIn_Click" />

                
        </div>
        <br />
        <hr />
         <div class="row mb-2">
            <asp:Label ID="lblSignUp" runat="server" Text=" Click here for registration"></asp:Label>
             <asp:LinkButton ID="lnkSignUp" runat="server" PostBackUrl="Registration.aspx"></asp:LinkButton>
        </div>
    </div>
</asp:Content>
