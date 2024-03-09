<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Allaila.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main class="bg_gray">
	
			<div class="container margin_60">
				<div class="main_title">
					<h2>Contact Allaia</h2>
					<p>Euismod phasellus ac lectus fusce parturient cubilia a nisi blandit sem cras nec tempor adipiscing rcu ullamcorper ligula.</p>
				</div>
				<%--<div class="row justify-content-center">
					<div class="col-lg-4">
						<div class="box_contacts">
							<i class="ti-support"></i>
							<h2>Allaia Help Center</h2>
							<a href="#0">+94 423-23-221</a> - <a href="#0">help@allaia.com</a>
							<small>MON to FRI 9am-6pm SAT 9am-2pm</small>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="box_contacts">
							<i class="ti-map-alt"></i>
							<h2>Allaia Showroom</h2>
							<div>6th Forrest Ray, London - 10001 UK</div>
							<small>MON to FRI 9am-6pm SAT 9am-2pm</small>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="box_contacts">
							<i class="ti-package"></i>
							<h2>Allaia Orders</h2>
							<a href="#0">+94 423-23-221</a> - <a href="#0">order@allaia.com</a>
							<small>MON to FRI 9am-6pm SAT 9am-2pm</small>
						</div>
					</div>
				</div>
				<!-- /row -->--%>				
			</div>
			<!-- /container -->
		<div class="bg_white">
			<div class="container margin_60_35">
				<h4 class="pb-3">Drop Us a Line</h4>
				<div class="row">
					<div class="col-lg-4 col-md-6 add_bottom_25">
						<div class="form-group">
							<asp:TextBox ID="txtName" placeholder="Name*" runat="server" class="form-control" ></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name" Display="None" ControlToValidate="txtName"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group">
							<asp:TextBox ID="txtEmail" placeholder="Email*" runat="server" class="form-control" ></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your email" Display="None" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group">
							<asp:TextBox ID="txtMobile" placeholder="Mobile Number*" runat="server" class="form-control" ></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your mobile number" Display="None" ControlToValidate="txtMobile"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group">
							<asp:TextBox ID="txtSubject" placeholder="Subject*" runat="server" class="form-control" ></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter your subject" Display="None" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group">
							<asp:TextBox ID="txtMessage" placeholder="Message*" runat="server" class="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your message" Display="None" ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group">
							<asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn_1 full-width" OnClick="btnSubmit_Click" />
						</div>
						<div class="form-group">
							<asp:Label ID="lblResponse" runat="server" Text="" ForeColor="Blue"></asp:Label>
						</div>
					</div>
					<div class="col-lg-8 col-md-6 add_bottom_25">
					<iframe class="map_contact" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d39714.47749917409!2d-0.13662037019554393!3d51.52871971170425!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondra%2C+Regno+Unito!5e0!3m2!1sit!2ses!4v1557824540343!5m2!1sit!2ses" style="border: 0" allowfullscreen></iframe>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /bg_white -->
	</main>
	<!--/main-->
</asp:Content>

