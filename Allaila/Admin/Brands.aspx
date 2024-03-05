<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Brands.aspx.cs" Inherits="Allaila.Admin.Brands" %>
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
			<h1>Brands page</h1>
		</div>
		<div class="row justify-content-center">
			<div class="col-xl-4 col-lg-4 col-md-4">
				<div class="box_account">
					<h6 class="new_client">Add Brand</h6>
					<div class="form_container">
						<div class="private box">
							<div class="row no-gutters">
								<div class="col-12 pr-1">
									<div class="form-group">
										<asp:TextBox ID="txtBrandName" runat="server" class="form-control" placeholder="Brand Name*"></asp:TextBox>
									</div>
								</div>
						</div>
						<hr />
						<div class="text-center">
							<asp:Button ID="btnAddBrand" runat="server" Text="Add Brand" class="btn_1 full-width" OnClick="btnAddBrand_Click" />
						</div>
						<asp:Label ID="lblResponse" runat="server" Text="Label" Visible="false"></asp:Label>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBrandName" Display="None" ErrorMessage="Please enter brand name"></asp:RequiredFieldValidator>
						<asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#FF3300" />
						
					</div>

					<!-- /form_container -->
				</div>
				<!-- /box_account -->
			</div>
			</div>
			<div class="col-xl-8 col-lg-8 col-md-8">
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped cart-list">
                <Columns>
                    <asp:TemplateField HeaderText="Color Id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Brand_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Color">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Brand_Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Number of Products">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Brand_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
					<asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("Brand_Id") %>' Text="Update" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Brand_Id") %>' Text="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
			</asp:GridView>
			</div>
			
		</div>
		<!-- /page_header -->
		<%--<table class="table table-striped cart-list">
							<thead>
								<tr>
									<th>
										Product
									</th>
									<th>
										Price
									</th>
									<th>
										Quantity
									</th>
									<th>
										Subtotal
									</th>
									<th>
										
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="thumb_cart">
											<img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/1.jpg" class="lazy" alt="Image">
										</div>
										<span class="item_cart">Armor Air x Fear</span>
									</td>
									<td>
										<strong>$140.00</strong>
									</td>
									<td>
										<div class="numbers-row">
											<input type="text" value="1" id="quantity_1" class="qty2" name="quantity_1">
										<div class="inc button_inc">+</div><div class="dec button_inc">-</div></div>
									</td>
									<td>
										<strong>$140.00</strong>
									</td>
									<td class="options">
										<a href="#"><i class="ti-trash"></i></a>
									</td>
								</tr>
								<tr>
									<td>
										<div class="thumb_cart">
											<img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/2.jpg" class="lazy" alt="Image">
										</div>
										<span class="item_cart">Armor Okwahn II</span>
									</td>
									<td>
										<strong>$110.00</strong>
									</td>
									<td>
										<div class="numbers-row">
											<input type="text" value="1" id="quantity_2" class="qty2" name="quantity_2">
										<div class="inc button_inc">+</div><div class="dec button_inc">-</div></div>
									</td>
									<td>
										<strong>$110.00</strong>
									</td>
									<td class="options">
										<a href="#"><i class="ti-trash"></i></a>
									</td>
								</tr>
								<tr>
									<td>
										<div class="thumb_cart">
											<img src="img/products/product_placeholder_square_small.jpg" data-src="img/products/shoes/3.jpg" class="lazy" alt="Image">
										</div>
										<span class="item_cart">Armor Air Wildwood ACG</span>
									</td>
									<td>
										<strong>$90.00</strong>
									</td>
									
									<td>
										<div class="numbers-row">
											<input type="text" value="1" id="quantity_3" class="qty2" name="quantity_3">
										<div class="inc button_inc">+</div><div class="dec button_inc">-</div></div>
									</td>
									<td>
										<strong>$90.00</strong>
									</td>
									<td class="options">
										<a href="#"><i class="ti-trash"></i></a>
									</td>
								</tr>
							</tbody>
						</table>--%>

					<div class="row add_top_30 flex-sm-row-reverse cart_actions">
						<div class="col-sm-4 text-end">
							<button type="button" class="btn_1 gray">Update Cart</button>
						</div>
						<div class="col-sm-8">
							<div class="apply-coupon">
								<div class="form-group">
									<div class="row g-2">
										<div class="col-md-6"><input type="text" name="coupon-code" value="" placeholder="Promo code" class="form-control"></div>
										<div class="col-md-4"><button type="button" class="btn_1 outline">Apply Coupon</button></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /cart_actions -->
	
		</div>
		<!-- /container -->
		
		<div class="box_cart">
			<div class="container">
			<div class="row justify-content-end">
				<div class="col-xl-4 col-lg-4 col-md-6">
			<ul>
				<li>
					<span>Subtotal</span> $240.00
				</li>
				<li>
					<span>Shipping</span> $7.00
				</li>
				<li>
					<span>Total</span> $247.00
				</li>
			</ul>
			<a href="cart-2.html" class="btn_1 full-width cart">Proceed to Checkout</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /box_cart -->
		
	</main>
</asp:Content>

