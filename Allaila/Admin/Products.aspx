<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Allaila.Admin.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main class="bg_gray">
		<div class="container margin_30">
		<div class="page_header">
			<div class="breadcrumbs">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Products</a></li>
					<li>Page active</li>
				</ul>
			</div>
			<h1>Products page</h1>
		</div>
		<div class="row justify-content-center">
			<div class="col-xl-12 col-lg-12 col-md-12">
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped cart-list" >
                <Columns>
                    <asp:TemplateField HeaderText="Product Id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Shoe_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Number of Products">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Shoe_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
					<asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server"  CommandArgument='<%# Eval("Shoe_Id") %>' Text="Update"  CommandName="cmd_update" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server"  CommandArgument='<%# Eval("Shoe_Id") %>' Text="Delete" CommandName="cmd_delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
			</asp:GridView>
			</div>
			
		</div>
		<!-- /page_header 
	
		</div>
		<!-- /container -->
		
		
		<!-- /box_cart -->
		
	</main>
    </div>
</asp:Content>