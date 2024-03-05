<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Allaila.Admin.Categories" %>
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
			<h1>Categories page</h1>
		</div>
		<div class="row justify-content-center">
			<div class="col-xl-4 col-lg-4 col-md-4">
				<div class="box_account">
					<h6 class="new_client">Add Categories</h6>
					<div class="form_container">
						<div class="private box">
							<div class="row no-gutters">
								<div class="col-12 pr-1">
									<div class="form-group">
										<asp:TextBox ID="txtCategoryName" ValidationGroup="addGroup" runat="server" class="form-control" placeholder="Category Name*"></asp:TextBox>
										<asp:HiddenField ID="hfCategoryId" runat="server" />
									</div>
								</div>
						</div>
						<hr />
						<div class="text-center">
							<asp:Button ID="btnAddCategory" ValidationGroup="addGroup" runat="server" Text="Add Category" class="btn_1 full-width" OnClick="btnAddCategory_Click"  />
						</div>
						<asp:Label ID="lblResponse" runat="server" Text="Label" Visible="false"></asp:Label>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCategoryName" ValidationGroup="addGroup" Display="None" ErrorMessage="Please enter brand name"></asp:RequiredFieldValidator>
						<asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="#FF3300" ValidationGroup="addGroup" />
						
					</div>

					<!-- /form_container -->
				</div>
				<!-- /box_account -->
			</div>
			</div>
			<div class="col-xl-8 col-lg-8 col-md-8">
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped cart-list" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Category Id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Category_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category_Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Number of Products">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Category_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
					<asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("Category_Id") %>' Text="Update"  CommandName="cmd_update" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Category_Id") %>' Text="Delete" CommandName="cmd_delete" />
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

