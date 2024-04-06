<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Allaila.Checkout" %>
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
		<h1>Sign In or Create an Account</h1>
			
	</div>
	<!-- /page_header -->
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="step first">
						<h3>1. User Info and Billing address</h3>
					<ul class="nav nav-tabs" id="tab_checkout" role="tablist">
					  <li class="nav-item">
						<a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#tab_1" role="tab" aria-controls="tab_1" aria-selected="true">Shipping Address</a>
					  </li>
					  <%--<li class="nav-item">
						<a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#tab_2" role="tab" aria-controls="tab_2" aria-selected="false">Login</a>
					  </li>--%>
					</ul>
					<div class="tab-content checkout">
						<div class="tab-pane fade show active" id="tab_1" role="tabpanel" aria-labelledby="tab_1">
							<div class="row no-gutters">
								<div class="col-12 form-group pr-1">
									<asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name" ></asp:TextBox>
								</div>
							</div>
							<!-- /row -->
							<div class="form-group">
								<asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Full Address" ></asp:TextBox>
							</div>
							<div class="row no-gutters">
								<div class="col-6 form-group pr-1">
									<asp:TextBox ID="txtCity" runat="server" class="form-control" placeholder="City" ></asp:TextBox>
								</div>
								<div class="col-6 form-group pl-1">
									<asp:TextBox ID="txtPinCode" runat="server" class="form-control" placeholder="Pin code" ></asp:TextBox>
								</div>
							</div>
							<div class="row no-gutters">
								<div class="col-6 form-group pr-1">
									<asp:TextBox ID="txtState" runat="server" class="form-control" placeholder="state" ></asp:TextBox>
								</div>
								<div class="col-6 form-group pl-1">
									<asp:TextBox ID="txtPhone" runat="server" class="form-control" placeholder="phone" ></asp:TextBox>
								</div>
							</div>
							<!-- /row -->
							<hr>
							<div class="form-group">
								<label class="container_check" id="other_addr">Other billing address
<%--								  <input type="checkbox">--%>
									<asp:CheckBox ID="CheckBox1" runat="server" />
									<span class="checkmark"></span>
								</label>
							</div>
							<div id="other_addr_c" class="pt-2">
							<div class="row no-gutters">
								<div class="col-12 form-group pr-1">
									<asp:TextBox ID="txtName1" runat="server" class="form-control" placeholder="Name" ></asp:TextBox>
								</div>
							</div>
							<!-- /row -->
							<div class="form-group">
								<asp:TextBox ID="txtAddress1" runat="server" class="form-control" placeholder="Full Address" ></asp:TextBox>
							</div>
							<div class="row no-gutters">
								<div class="col-6 form-group pr-1">
									<asp:TextBox ID="txtCity1" runat="server" class="form-control" placeholder="City" ></asp:TextBox>
								</div>
								<div class="col-6 form-group pl-1">
									<asp:TextBox ID="txtPinCode1" runat="server" class="form-control" placeholder="Pin code" ></asp:TextBox>
								</div>
							</div>
							<div class="row no-gutters">
								<div class="col-6 form-group pr-1">
									<asp:TextBox ID="txtState1" runat="server" class="form-control" placeholder="state" ></asp:TextBox>
								</div>
								<div class="col-6 form-group pl-1">
									<asp:TextBox ID="txtPhone1" runat="server" class="form-control" placeholder="phone" ></asp:TextBox>
								</div>
							</div>
							</div>
							<!-- /other_addr_c -->
							<hr>
						</div>
						<!-- /tab_1 -->
					</div>
					</div>
					<!-- /step -->
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="step middle payments">
						<h3>2. Shipping</h3>
							<h6 class="pb-2">Shipping Method</h6>
							
						
						<ul>
								<li>
									<asp:RadioButton ID="rbStandard" runat="server" GroupName="shipping" Checked="true" AutoPostBack="True" OnCheckedChanged="rbStandard_CheckedChanged" style="display:inline" />
									<label class="container_radio" style="display:inline">Standard shipping<span class="float-end">₹50</span></label>
								</li>
								<li>
									<asp:RadioButton ID="rbExpress" runat="server" GroupName="shipping" AutoPostBack="True" OnCheckedChanged="rbExpress_CheckedChanged" style="display:inline" />
									<label class="container_radio" style="display:inline" >Express shipping<span class="float-end">₹70</span></label>
								</li>
							</ul>
					</div>
					<!-- /step -->
					
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="step last">
						<h3>3. Order Summary</h3>
					<div class="box_general summary">
						<asp:DataList ID="DataList1" runat="server" style="width:100%;">
                            <ItemTemplate>
								<ul >
                                <li class="clearfix"><em><%# Eval("Name") %></em>  <span class="float-end">₹<%# Eval("Price") %></span></li>
								</ul>
                            </ItemTemplate>
                        </asp:DataList>
						
						<%--<ul>
							<li class="clearfix"><em>1x Armor Air X Fear</em>  <span>$145.00</span></li>
							<li class="clearfix"><em>2x Armor Air Zoom Alpha</em> <span>$115.00</span></li>
						</ul>--%>
						<ul>
							<li class="clearfix"><em><strong>Subtotal</strong></em> <span>₹<asp:Label ID="lblSubtotal" runat="server" Text="0"></asp:Label></span></li>
							<li class="clearfix"><em><strong>Shipping</strong></em> <span>₹<asp:Label ID="lblShipping" runat="server" Text="0"></asp:Label></span></li>
							
						</ul>
						<div class="total clearfix">TOTAL <span>₹<asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label></span></div>

						<asp:Button ID="btnConfirm" runat="server" Text="Confirm" class="btn_1 full-width" OnClick="btnConfirm_Click" />
					</div>
					<!-- /box_general -->
					</div>
					<!-- /step -->
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</main>
</asp:Content>

