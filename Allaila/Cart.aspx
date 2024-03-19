<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Allaila.Cart" %>
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
			<h1>Cart page</h1>
		</div>
		<!-- /page_header -->
		<asp:GridView runat="server" ID="GridView1" class="table table-striped cart-list" AutoGenerateColumns="False" >
            <Columns>
                <asp:TemplateField HeaderText="Shoe">
                    <ItemTemplate>
						<div class="thumb_cart">
                        <asp:Image Height="200px" Width="200px" ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>'  data-src="img/products/shoes/1.jpg" class="lazy" alt="Image" />							
						</div>
						<span class="item_cart"><asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name") %>' ></asp:Label></span>
                    </ItemTemplate>
                </asp:TemplateField>
				<asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
						<strong>$<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' ></asp:Label></strong>
                    </ItemTemplate>
                </asp:TemplateField>
				<asp:TemplateField HeaderText="Size">
                    <ItemTemplate>
						<strong><asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Size") %>' ></asp:Label></strong>
                    </ItemTemplate>
                </asp:TemplateField>
				<asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
						<div class="numbers-row">
							<asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>' class="qty2" name="quantity_1"></asp:TextBox>
							<div class="inc button_inc">+</div><div class="dec button_inc">-</div>
						</div>
                    </ItemTemplate>
                </asp:TemplateField>
				<asp:TemplateField HeaderText="Subtotal">
                    <ItemTemplate>
						<strong>$<asp:Label ID="lblSubtotal" runat="server" Text='<%# Eval("Price") %>' ></asp:Label></strong>
                    </ItemTemplate>
                </asp:TemplateField>
				<asp:TemplateField HeaderText="Operations">
                    <ItemTemplate>
						<asp:HyperLink ID="HyperLink1" runat="server"><i class="ti-trash"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            </asp:GridView>
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

