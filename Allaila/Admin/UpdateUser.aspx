<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="Allaila.Admin.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main class="bg_gray">
		
	<div class="container margin_30">
		<div class="page_header">
			<div class="breadcrumbs">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Product</a></li>
					<li>Add Product</li>
				</ul>
			</div>
		</div>
	<!-- /page_header -->
		<div class="row justify-content-center">
				<%--Login part--%>
			<div class="col-xl-12 col-lg-12 col-md-12">
				<div class="box_account">
					<h3 class="client">Add User</h3>
					<div class="form_container">
						<div class="row">
							<div class="form-group col">
								First Name:<asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First Name*"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtFirstName" Display="None" ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
							</div>
							<div class="form-group col">
							
								Last Name:<asp:TextBox ID="txtLastName" runat="server" class="form-control" placeholder="Last Name*"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtLastName" Display="None" ErrorMessage="Please enter last name"></asp:RequiredFieldValidator>
							</div>
						</div>

						<div class="row">
							<div class="form-group col">
								Password:<asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Password*"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtPassword" Display="None" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
							</div>
							<div class="form-group col">
								Email:<asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email*"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
							</div>
						</div>

						<div class="row">
							<div class="form-group col">
								Mobile number:<asp:TextBox ID="txtMobileNo" runat="server" class="form-control" placeholder="Mobile number*"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtMobileNo" Display="None" ErrorMessage="Please enter mobile number"></asp:RequiredFieldValidator>
							</div>
							<div class="form-group col"> 
								User Role: <asp:DropDownList ID="ddlUserRole" runat="server" class="form-control" >
                                    <asp:ListItem Value="0">User</asp:ListItem>
                                    <asp:ListItem Value="1">Admin</asp:ListItem>
                                </asp:DropDownList>
							</div>
						</div>


						

						<div class="text-center">
							<asp:Button ID="btnUpdateUser" runat="server" Text="Update User" class="btn_1 full-width" ValidationGroup="loginGroup" OnClick="btnUpdateUser_Click" />
						</div>
						<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" ValidationGroup="loginGroup" />
						<asp:Label ID="lblResponse" runat="server" ></asp:Label>
					</div>
					<!-- /form_container -->
				</div>
				<!-- /box_account -->
			</div>
		<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	</main>
	<!--/main-->
</asp:Content>