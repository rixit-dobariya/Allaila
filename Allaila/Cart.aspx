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
		<asp:GridView runat="server" ID="GridView1" class="table table-striped cart-list" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" >
            <Columns>
                <asp:TemplateField HeaderText="Shoe">
                    <ItemTemplate>
						<div class="thumb_cart">
                        <asp:Image Height="150px" Width="150px" ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' class="lazy" alt="Image" />							
						</div>
                    </ItemTemplate>
                </asp:TemplateField
					><asp:TemplateField HeaderText="Shoe Name">
                    <ItemTemplate>
						<span class="item_cart"><asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name") %>' ></asp:Label></span>
                    </ItemTemplate>
                </asp:TemplateField>
				<asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
						<strong>₹<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' ></asp:Label></strong>
                    </ItemTemplate>
                </asp:TemplateField>
				<asp:TemplateField HeaderText="Size">
                    <ItemTemplate>
						<strong><asp:Label ID="lblSize" runat="server" Text='<%# Eval("Size") %>' ></asp:Label></strong>
                    </ItemTemplate>
                </asp:TemplateField>
				<asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
						<div class="numbers-row">
							<asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>' class="qty2" name="quantity_1"></asp:TextBox>
							<div class="inc button_inc" >+</div><div class="dec button_inc">-</div>
						</div>
                    </ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Subtotal">
                    <ItemTemplate>
						<strong>₹<asp:Label ID="lblSubtotal" runat="server" Text='<%# Convert.ToDouble(Eval("Price"))*Convert.ToInt32(Eval("Quantity")) %>' ></asp:Label></strong>
                    </ItemTemplate>
                </asp:TemplateField>
				<asp:TemplateField HeaderText="Operations">
                    <ItemTemplate>
						<%--<asp:HyperLink ID="HyperLink1" runat="server"><i class="ti-trash"></i></asp:HyperLink>--%>
						<asp:Button ID="Button4" runat="server" Text="Update" CommandName="update" CommandArgument='<%# Eval("Shoe_Id") + ";" + Container.DataItemIndex %>' />
						<asp:Button ID="Button5" runat="server" Text="Delete" CommandName="delete" CommandArgument='<%# Eval("Shoe_Id") + ";" + Container.DataItemIndex %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            </asp:GridView>

						<div class="row add_top_30 flex-sm-row-reverse cart_actions">
						<%--<div class="col-sm-4 text-end">
							<asp:Button ID="Button1" runat="server" Text="Update Cart" class="btn_1 gray" />
						</div>--%>
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
					<span>Subtotal</span> ₹<asp:Label ID="lblSubtotal" runat="server" Text="Subtotal"></asp:Label>
				</li>
				<li>
					<span>Shipping</span> ₹<asp:Label ID="lblShipping" runat="server" Text="Shipping"></asp:Label>
				</li>
				<li>
					<span>Total</span> ₹<asp:Label ID="lblTotal" runat="server" Text="Total"></asp:Label>
				</li>
			</ul>
			<asp:Button ID="Button2" runat="server" Text="Proceed to Checkout" class="btn_1 full-width cart" OnClick="Button2_Click" />
					</div>
				</div>
			</div>
		</div>
		<!-- /box_cart -->
		
	</main>
</asp:Content>

