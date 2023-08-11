<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="information_system.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-5">
            <div class="container-md row">
            <div class="card col-8 mx-auto">
                <div class="card-header text-center">
                    <h2> User Registration</h2>
                </div>
                <div class="card-body">

        <div class="row mb-2">
            <div class="col-md-4">
            <asp:Label ID="lblFirstName" runat="server" CssClass="" Text="First Name"></asp:Label>

            </div>
            <div class="col-md-8">
             <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>


        </div>
        <div class="row mb-2">
            <div class="col-md-4">

            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
            </div>
            <div class="col-md-8">
             <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>

            </div>


        </div>
        <div class="row mb-2">
            <div class="col-md-4">

            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </div>
            <div class="col-md-8">
             <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
        </div>

         <div class="row mb-2">
             <div class="col-md-4">

            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </div>
            <div class="col-md-8">
             <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

            </div>
        </div>  
        <div class="row mb-2">
            <div class="col-md-4">

            <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No."></asp:Label>
            </div>
            <div class="col-md-8">
             <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
        </div> 
        <div class="row mb-2">
            <div class="col-md-4">

            <asp:Label ID="lblGender" runat="server" Text="Gender "></asp:Label>
            </div>
            <div class="col-md-8">

            <asp:RadioButtonList runat="server" ID="rdGender" CssClass=" form-check-inline" RepeatDirection="Horizontal">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList>
            </div>
        </div> 
        <div class="row mb-2">
            <div class="col-md-4">

            <asp:Label ID="lblIsMarried" runat="server" Text="IsMarried" CssClass="form-label"></asp:Label>
            </div>
            <div class="col-md-8">
            <asp:CheckBox runat="server" ID="chkIsMarried" CssClass="form-check-inline" TextAlign="Left">

            </asp:CheckBox>
            </div>
        </div> 
        <div class="row mb-2">
            <div class="col-md-4">

            <asp:Label ID="lblAddress" runat="server" Text="Address "></asp:Label>
            </div>
            <div class="col-md-8">
             <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" ></asp:TextBox>

            </div>
        </div> 
    <div class="row mb-2">
         <div class="col-md-4">
            <asp:Label ID="lblCity" runat="server" Text="City "></asp:Label>

         </div>
         <div class="col-md-8">
            <asp:DropDownList runat="server" ID="drpCity" CssClass="form-select">
                <asp:ListItem Text="Srinagar" Value="Srinagar"></asp:ListItem>
                <asp:ListItem Text="Budgam" Value="Budgam"></asp:ListItem>
                <asp:ListItem Text="Ganderbal" Value="Ganderbal"></asp:ListItem>
                <asp:ListItem Text="Shopain" Value="Shapain"></asp:ListItem>
            </asp:DropDownList>

         </div>
        </div> 
    <div class="row mb-2">
          <div class="col-md-4">
            <asp:Label ID="lblState" runat="server" Text="State "></asp:Label>

         </div>
         <div class="col-md-8">
            <asp:DropDownList runat="server" ID="drpState" CssClass="form-select">
                <asp:ListItem Text="J&k" Value="J&K"></asp:ListItem>
                <asp:ListItem Text="Dehli" Value="Dehli"></asp:ListItem>
                <asp:ListItem Text="Goa" Value="Gao"></asp:ListItem>
                <asp:ListItem Text="Assam" Value="Assam"></asp:ListItem>
            </asp:DropDownList>

         </div>
        </div> 
    <div class="row mb-2">
          <div class="col-md-4">

            <asp:Label ID="lblCountry" runat="server" Text="Country "></asp:Label>
         </div>
         <div class="col-md-8">

            <asp:DropDownList runat="server" ID="drpCountry" CssClass="form-select">
                <asp:ListItem Text="India" Value="India"></asp:ListItem>
                <asp:ListItem Text="Pakistan" Value="Pakistan"></asp:ListItem>
                <asp:ListItem Text="Afganistan" Value="Afganistan"></asp:ListItem>
                <asp:ListItem Text="Nepal" Value="Nepal"></asp:ListItem>
            </asp:DropDownList>
         </div>
        </div>
                </div>
                <div class="card-footer">

           <div class="row mb-4">
               <div class="col-4 mx-auto">

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-dark w-100" OnClick="btnRegister_Click"  />                
            <asp:Button ID="btnReSet" runat="server" Text="Reset" CssClass="btn btn-secondary w-100" OnClick="btnReSet_Click"  />                
               </div>
        </div>
                </div>
        
<%--        <hr />
         <div class="row text-center" style="font-size:20px;">
            <asp:Label ID="lbllogin" runat="server" Text="Already User?"> <asp:LinkButton ID="lnkLogin" runat="server" Text="Click Here" PostBackUrl="login.aspx"></asp:LinkButton>
       
                </asp:Label></div>
            </div>--%>
        </div>
        </div>
        </div>
        <div class="col-7">
            <asp:Button runat="server" ID="btnAddUser" Text="Add New User" class="btn btn-primary" OnClick="btnAddUser_Click" />

    <asp:GridView runat="server" Width="100%" AutoGenerateColumns="False" ID="grdUserDetails" CssClass="table table-bordered table-hover table-striped" 
        DataKeyNames="Id" OnRowCommand="grdUserDetails_RowCommand" OnRowEditing="grdUserDetails_RowEditing">
        <Columns>
            <asp:TemplateField HeaderText="First Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email-Id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IsMarried">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("IsMarried") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("IsMarried") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnView" runat="server" UseSubmitBehavior="false" Text="View" CommandName="View" CommandArgument='<%#Eval("Id")%>' CssClass="btn btn-primary"/>
                    <asp:Button ID="btnEdit" runat="server" UseSubmitBehavior="false" Text="Edit" CommandName="Edit" CommandArgument='<%#Eval("Id")%>' CssClass="btn btn-primary"/>
                    <asp:Button ID="btnDelete" runat="server" UseSubmitBehavior="false" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("Id")%>' CssClass="btn btn-danger"/>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>
        </div>
    </div>
    

</asp:Content>
