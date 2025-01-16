<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Allaila.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main class="bg_gray">
	  <div class="container margin_30">
		<div class="page_header">
			<div class="breadcrumbs">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Orders</a></li>
<%--					<li>Page active</li>--%>
				</ul>
			</div>
			<h1>Orders page</h1>
		</div>
		<div class="row justify-content-center">
			<%--<div class="col-xl-12 col-lg-12 col-md-12">--%>
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped cart-list" OnRowCommand="GridView1_RowCommand" >
                <Columns>
                    <asp:TemplateField HeaderText="Order Id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Order_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Order Date">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Order_Date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Order Status">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Order_Status_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Total") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Decline">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server"  CommandArgument='<%# Eval("Order_Id") %>' Text="Cancel"  CommandName="cmd_cancel" />
                        </ItemTemplate>
                    </asp:TemplateField>
					<asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server"  CommandArgument='<%# Eval("Order_Id") %>' Text="Update"  CommandName="cmd_update" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
			</asp:GridView>
			<%--</div>--%>
			
		</div>
		<!-- /page_header 
	
		</div>
		<!-- /container -->
		
		
		<!-- /box_cart -->
	    </div>	
	</main>
</asp:Content>

