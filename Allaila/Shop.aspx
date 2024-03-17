<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="Allaila.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main>
		<div class="top_banner">
			<div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.3)">
				<div class="container">
					<div class="breadcrumbs">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Category</a></li>
							<li>Page active</li>
						</ul>
					</div>
					<h1>Shoes - Grid listing</h1>
				</div>
			</div>
			<img src="img/bg_cat_shoes.jpg" class="img-fluid" alt="">
		</div>
		<!-- /top_banner -->
		
			<div id="stick_here"></div>		
			<div class="toolbox elemento_stick">
				<div class="container">
				<ul class="clearfix">
					<li>
						<div class="sort_select">
							<select name="sort" id="sort">
                                    <option value="popularity" selected="selected">Sort by popularity</option>
                                    <option value="rating">Sort by average rating</option>
                                    <option value="date">Sort by newness</option>
                                    <option value="price">Sort by price: low to high</option>
                                    <option value="price-desc">Sort by price: high to 
							</select>
						</div>
					</li>
					<li>
						<a href="#0"><i class="ti-view-grid"></i></a>
						<a href="listing-row-1-sidebar-left.html"><i class="ti-view-list"></i></a>
					</li>
					<li>
						<a data-bs-toggle="collapse" href="#filters" role="button" aria-expanded="false" aria-controls="filters">
							<i class="ti-filter"></i><span>Filters</span>
						</a>
					</li>
				</ul>
				<div class="collapse" id="filters"><div class="row small-gutters filters_listing_1">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="dropdown">
						<a href="#" data-bs-toggle="dropdown" class="drop">Categories</a>
						<div class="dropdown-menu">
							<div class="filter_type">
									<ul>
										<li>
											<label class="container_check">Men <small>12</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">Women <small>24</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">Running <small>23</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">Training <small>11</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
									</ul>
									<a href="#0" class="apply_filter">Apply</a>
								</div>
						</div>
					</div>
					<!-- /dropdown -->
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="dropdown">
						<a href="#" data-bs-toggle="dropdown" class="drop">Color</a>
						<div class="dropdown-menu">
							<div class="filter_type">
									<ul>
										<li>
											<label class="container_check">Blue <small>06</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">Red <small>12</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">Orange <small>17</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">Black <small>43</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
									</ul>
									<a href="#0" class="apply_filter">Apply</a>
								</div>
						</div>
					</div>
					<!-- /dropdown -->
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="dropdown">
						<a href="#" data-bs-toggle="dropdown" class="drop">Brand</a>
						<div class="dropdown-menu">
							<div class="filter_type">
									<ul>
										<li>
											<label class="container_check">Adidas <small>11</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">Nike <small>08</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">Vans <small>05</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">Puma <small>18</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
									</ul>
									<a href="#0" class="apply_filter">Apply</a>
								</div>
						</div>
					</div>
					<!-- /dropdown -->
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="dropdown">
						<a href="#" data-bs-toggle="dropdown" class="drop">Price</a>
						<div class="dropdown-menu">
							<div class="filter_type">
									<ul>
										<li>
											<label class="container_check">$0 — $50<small>11</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">$50 — $100<small>08</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">$100 — $150<small>05</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
										<li>
											<label class="container_check">$150 — $200<small>18</small>
											  <input type="checkbox">
											  <span class="checkmark"></span>
											</label>
										</li>
									</ul>
									<a href="#0" class="apply_filter">Apply</a>
								</div>
						</div>
					</div>
					<!-- /dropdown -->
			
				</div></div></div>
				</div>
			</div>
			<!-- /toolbox -->


			<div class="container margin_30">
			<div class="row small-gutters">
				<asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
					<ItemTemplate>
						<div class="col-12 col-md-4 col-xl-12">
							<div class="grid_item">
								<figure>
									<span class="ribbon off"><asp:Label ID="Label4" runat="server" Text='<%# "-" + Eval("Discount")+"%" %>' ></asp:Label></span>
									<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl='<%# "ProductDetails.aspx?Shoe_Id=" + Eval("Shoe_Id") %>' >
										<asp:Image ID="Image1" runat="server" class="img-fluid lazy" ImageUrl='<%# Eval("Image") %>' data-src="img/products/shoes/1.jpg" alt="" />
									</asp:HyperLink>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<%--<div data-countdown="2019/05/15" class="countdown"></div>--%>
								</figure>
								<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl='<%# "ProductDetails.aspx?Shoe_Id=" + Eval("Shoe_Id") %>' >
									<h3>
										<asp:Label ID="Label3" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
									</h3>
								</asp:HyperLink>
								<div class="price_box">
									<span class="new_price">
										<asp:Label ID="Label1" runat="server" Text='<%# "₹" + Eval("New_Price") %>'></asp:Label>
									</span>
									<span class="old_price">
										<asp:Label ID="Label2" runat="server" Text='<%# "₹" + Eval("Price") %>'></asp:Label>
									</span>
								</div>
								<ul>
									<li>
										<asp:HyperLink NavigateUrl='<%# "Wishlist.aspx?Shoe_Id=" + Eval("Shoe_Id") %>' ID="HyperLink3" runat="server"  class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></asp:HyperLink>
									</li>
									<li>
										<asp:HyperLink NavigateUrl='<%# "Cart.aspx?Shoe_Id=" + Eval("Shoe_Id") %>' ID="HyperLink5" runat="server" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to cart"><i class="ti-shopping-cart"></i><span>Add to cart</span></asp:HyperLink>
									</li>
								</ul>
							</div>
							<!-- /grid_item -->
						</div>
					</ItemTemplate>
                </asp:DataList>
			</div>
			<!-- /row -->
				
			<div class="pagination__wrapper">
				<ul class="pagination">
					<li>
						<asp:HyperLink ID="HyperLink1" runat="server" class="prev" title="previous page">&#10094;</asp:HyperLink>
					</li>
					<%--<li>
						<a href="#0" class="active">1</a>
					</li>
					<li>
						<a href="#0">2</a>
					</li>
					<li>
						<a href="#0">3</a>
					</li>
					<li>
						<a href="#0">4</a>
					</li>--%>
					<li>
						<asp:HyperLink ID="HyperLink2" runat="server" class="next" title="next page">&#10095;</asp:HyperLink>
					</li>
				</ul>
			</div>
				
		</div>
		<!-- /container -->
	</main>
	<!-- /main -->
</asp:Content>

