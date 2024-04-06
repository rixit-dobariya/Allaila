<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Brands.aspx.cs" Inherits="Allaila.Brands" %>
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
							<li>Brands</li>
						</ul>
					</div>
				<%--	<h1>Shoes - Grid listing</h1>--%>
				</div>
			</div>
			<img src="img/bg_cat_shoes.jpg" class="img-fluid" alt="">
		</div>
		<!-- /top_banner -->
		
		<div class="container margin_60_35">
			<div class="row small-gutters categories_grid">
				<div class="col-sm-12 col-md-12">
					<div class="row small-gutters mt-md-0 mt-sm-2">
						<asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
                            <ItemTemplate>
                                <div class="col-sm-12">
									<a href=<%# "Products.aspx?Brand_Id="+Eval("Brand_Id") %>>
										<img src='<%# Eval("Brand_Image").ToString().Substring(2)  %>'  alt="" class="img-fluid lazy" Height="300px" Width="450px" >
										<div class="wrapper">
											<h2><%# Eval("Brand_Name") %></h2>
											<p><%# Eval("Products") %></p>
										</div>
									</a>
								&nbsp;&nbsp;&nbsp;&nbsp;</div>
                            </ItemTemplate>
                        </asp:DataList>
						<%--<div class="col-sm-6">
							<a href="listing-grid-1-full.html">
								<img src="img/img_cat_home_2_placeholder.png" data-src="img/img_cat_home_2.jpg" alt="" class="img-fluid lazy">
								<div class="wrapper">
									<h2>Running</h2>
									<p>150 Products</p>
								</div>
							</a>
						</div>
						<div class="col-sm-6">
							<a href="listing-grid-1-full.html">
								<img src="img/img_cat_home_2_placeholder.png" data-src="img/img_cat_home_3.jpg" alt="" class="img-fluid lazy">
								<div class="wrapper">
									<h2>Football</h2>
									<p>90 Products</p>
								</div>
							</a>
						</div>
						<div class="col-sm-12 mt-sm-2">
							<a href="listing-grid-1-full.html">
								<img src="img/img_cat_home_4_placeholder.png" data-src="img/img_cat_home_4.jpg" alt="" class="img-fluid lazy">
								<div class="wrapper">
									<h2>Training</h2>
									<p>120 Products</p>
								</div>
							</a>
						</div>--%>
					</div>
				</div>
			</div>
			<!--/categories_grid-->
		</div>

	</main>
    </div>
</asp:Content>

