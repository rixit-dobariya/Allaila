<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterSignIn.aspx.cs" Inherits="Allaila.RegisterSignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main class="bg_gray">
		
	<div class="container margin_30">
		<div class="page_header">
			<div class="breadcrumbs">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Category</a></li>
					<li>Page active</li>
				</ul>
			</div>
		</div>
		<h1>Sign In or Create an Account</h1>
	<!-- /page_header -->
		<div class="row justify-content-center">
				<%--Login part--%>
			<div class="col-xl-6 col-lg-6 col-md-8">
				<div class="box_account">
					<h3 class="client">Already Client</h3>
					<div class="form_container">
						<div class="form-group">
							<asp:TextBox ID="txtLoginEmail" runat="server" class="form-control" placeholder="Email*"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:TextBox ID="txtLoginPassword" runat="server" class="form-control" placeholder="Password*"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtLoginPassword" Display="None" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
						</div>
						<div class="clearfix add_bottom_15">
							<div class="checkboxes float-start">
								<label class="container_check">Remember me
									<input type="checkbox">
									<span class="checkmark"></span>
								</label>
							</div>
							<div class="float-end"><a id="forgot" href="javascript:void(0);">Lost Password?</a></div>
						</div>
						<div class="text-center">
								<asp:Button ID="btnLogin" runat="server" Text="Log In" class="btn_1 full-width" OnClick="btnLogin_Click" ValidationGroup="loginGroup" />
						</div>
						<asp:Label ID="lblLoginResult" runat="server" Text="Label" Visible="False"></asp:Label>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtLoginEmail" ErrorMessage="Please enter proper email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtLoginEmail" Display="None" ErrorMessage="Please enter email address"></asp:RequiredFieldValidator>
				<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" ValidationGroup="loginGroup" />
						<div id="forgot_pw">
							<div class="form-group">
								<input type="email" class="form-control" name="email_forgot" id="email_forgot" placeholder="Type your email">
							</div>
							<p>Your password will be sent shortly.</p>
							<div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
						</div>
					</div>
					<!-- /form_container -->
				</div>
				<!-- /box_account -->
			</div>
				<%--Register part--%>
			<div class="col-xl-6 col-lg-6 col-md-8">
				<div class="box_account">
					<h3 class="new_client">New Client</h3> <small class="float-right pt-2">* Required Fields</small>
					<div class="form_container">
						<div class="private box">
							<div class="row no-gutters">
								<div class="col-6 pr-1">
									<div class="form-group">
										<asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First Name*"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtFirstName" Display="None" ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
									</div>
								</div>
								<div class="col-6 pr-1">
									<div class="form-group">
										<asp:TextBox ID="txtLastName" runat="server" class="form-control" placeholder="Last Name*"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtLastName" Display="None" ErrorMessage="Please enter last name"></asp:RequiredFieldValidator>
									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email*"></asp:TextBox>

									</div>
								</div>
								<div class="col-12">
									<div class="form-group">
										<asp:TextBox ID="txtPhoneNo" runat="server" class="form-control" placeholder="Phone number*"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtPhoneNo" Display="None" ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
									</div>
								</div>
								<div class="col-6 pl-1">
									<div class="form-group">
										<asp:TextBox ID="txtPassword1" runat="server" class="form-control" placeholder="Password*"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtPassword1" Display="None" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
									</div>
								</div>
								<div class="col-6 pl-1">
									<div class="form-group">
										<asp:TextBox ID="txtPassword2" runat="server" class="form-control" placeholder="Confirm Password*"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtPassword2" Display="None" ErrorMessage="Please enter password in second field"></asp:RequiredFieldValidator>
											<asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtPassword1" ControlToValidate="txtPassword2" runat="server" ErrorMessage="Both passwords must be same!" Display="None" ValidationGroup="registerGroup"></asp:CompareValidator>
									</div>
								</div>
						</div>
						<hr />
						<div class="text-center">
							<asp:Button ID="Button1" runat="server" Text="Register" class="btn_1 full-width" OnClick="Button1_Click" ValidationGroup="registerGroup"/>
						</div>
						<asp:Label ID="lblRegisterResponse" runat="server" Text="Label" Visible="False" ForeColor="#0000ff"></asp:Label>
						<asp:Label ID="lblRegisterError" runat="server" Text="Label" Visible="False" ForeColor="#FF3300"></asp:Label>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter proper email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="registerGroup" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Please enter email address"></asp:RequiredFieldValidator>
							<asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#FF3300" ValidationGroup="registerGroup" />
					</div>

					<!-- /form_container -->
				</div>
				<!-- /box_account -->
			</div>
		</div>
		<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	</main>
	<!--/main-->
</asp:Content>

