<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Allaila.Admin.UpdateProduct" %>
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
					<li>Update Product</li>
				</ul>
			</div>
		</div>
	<!-- /page_header -->
		<div class="row justify-content-center">
				<%--Login part--%>
			<div class="col-xl-12 col-lg-12 col-md-12">
				<div class="box_account">
					<h3 class="client">Update Product</h3>
					<div class="form_container">
						<div class="row">
							<div class="form-group col">
							Shoe Name:<asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Shoe Name*"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtName" Display="None" ErrorMessage="Please enter shoe name"></asp:RequiredFieldValidator>
							</div>
							<div class="form-group col">

							Shoe Image:<asp:FileUpload ID="fuImage" runat="server" class="form-control"/>
							<asp:Label ID="lblImageMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
								Upload Only if you want to replace it with old one
							</div>
						</div>
						<div class="row">
						<div class="form-group col">
							Brand: <asp:DropDownList ID="ddlBrandId" runat="server" class="form-control"></asp:DropDownList>
						</div>
						<div class="form-group col">
							Category: <asp:DropDownList ID="ddlCategoryId" runat="server" class="form-control"></asp:DropDownList>
						</div>
						</div>

						<div class="row">
						<div class="form-group col">
							Price:<asp:TextBox ID="txtPrice" runat="server" class="form-control" placeholder="Price*" TextMode="Number"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtPrice" Display="None" ErrorMessage="Please enter price of shoe"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group col">
							Discount:<asp:TextBox ID="txtDiscount" runat="server" class="form-control" placeholder="Discount*" TextMode="Number"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtDiscount" Display="None" ErrorMessage="Please enter discount"></asp:RequiredFieldValidator>
						</div>
						</div>

						<div class="form-group">
							 Description:<asp:TextBox ID="txtDescription" runat="server" class="form-control" placeholder="Description*" TextMode="MultiLine" Rows="5"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtDescription" Display="None" ErrorMessage="Please enter description of shoe"></asp:RequiredFieldValidator>
						</div>

						<div class="row">
						<div class="form-group col">
							Stock of size 6:<asp:TextBox ID="txtSize6" runat="server" class="form-control" placeholder="Stock of size 6 shoes*" TextMode="Number" Text="0"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtSize6" Display="None" ErrorMessage="Please enter stock of size 6 shoes"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group col">
							Stock of size 7:<asp:TextBox ID="txtSize7" runat="server" class="form-control" placeholder="Stock of size 7 shoes*" TextMode="Number" Text="0"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtSize7" Display="None" ErrorMessage="Please enter stock of size 7 shoes"></asp:RequiredFieldValidator>
						</div>
						</div>
						
						<div class="row">
						<div class="form-group col">
							Stock of size 8:<asp:TextBox ID="txtSize8" runat="server" class="form-control" placeholder="Stock of size 8 shoes*" TextMode="Number" Text="0"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtSize8" Display="None" ErrorMessage="Please enter stock of size 8 shoes"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group col">
							Stock of size 9:<asp:TextBox ID="txtSize9" runat="server" class="form-control" placeholder="Stock of size 9 shoes*" TextMode="Number" Text="0"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtSize9" Display="None" ErrorMessage="Please enter stock of size 9 shoes"></asp:RequiredFieldValidator>
						</div>
						</div>

						<div class="row">
						<div class="form-group col">
							Stock of size 10:<asp:TextBox ID="txtSize10" runat="server" class="form-control" placeholder="Stock of size 10 shoes*" TextMode="Number" Text="0"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="loginGroup" runat="server" ControlToValidate="txtSize10" Display="None" ErrorMessage="Please enter stock of size 10 shoes"></asp:RequiredFieldValidator>
						</div>
						<div class="form-group col">
						</div>
						</div>

						<asp:HiddenField ID="hfImage" runat="server" />
						<asp:HiddenField ID="hfProductId" runat="server" />

						

						<div class="text-center">
							<asp:Button ID="btnUpdateProduct" runat="server" Text="Update Product" class="btn_1 full-width" ValidationGroup="loginGroup" OnClick="btnUpdateProduct_Click" />
						</div>
						<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" ValidationGroup="loginGroup" />
						<asp:Label ID="lblResponse" runat="server" Visible="false"></asp:Label>
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

