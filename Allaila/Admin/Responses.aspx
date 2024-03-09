<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Responses.aspx.cs" Inherits="Allaila.Admin.Responses" %>
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
			<h1>Responses page</h1>
		</div>
		<div class="row justify-content-center">
			<div class="col-xl-12 col-lg-12 col-md-12">
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped cart-list" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Response Id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Response_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile Number">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Mobile_No") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Subject">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Subject") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Message">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Message") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
					<%--<asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("Response_Id") %>' Text="Update"  CommandName="cmd_update" />
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Response_Id") %>' Text="Delete" CommandName="cmd_delete" />
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

