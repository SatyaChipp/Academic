<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page">
		<div>
			<div id="body">
				<div>          <a href="menu.aspx" class="whatshot">What&#39;s Hot</a> 
                    <div>
                        <asp:Label ID="Label1" runat="server" Text="TYPE" Font-Bold="true" Font-Size="X-Large" Font-Underline="true" ForeColor="Brown"></asp:Label>
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT [type], [id] FROM [ingred]"></asp:SqlDataSource>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="id" Font-Bold="true" Font-Size="Larger" ForeColor="Chocolate">
                                                   </asp:RadioButtonList>
                        <asp:Label ID="Label2" runat="server" Text="ROAST" Font-Bold="true" Font-Size="X-Large" Font-Underline="true" ForeColor="Brown"></asp:Label>
                        
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT [roast], [id] FROM [ingred] WHERE ([roast] IS NOT NULL)"></asp:SqlDataSource>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="roast" DataValueField="id" Font-Bold="true" Font-Size="Larger" ForeColor="Chocolate"></asp:RadioButtonList>
                    
                        <asp:Label ID="Label3" runat="server" Text="CAFFEINE" Font-Bold="true" Font-Size="X-Large" Font-Underline="true" ForeColor="Brown"></asp:Label>
                        
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT [caff], [id] FROM [ingred] WHERE ([caff] IS NOT NULL)"></asp:SqlDataSource>
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="caff" DataValueField="id" Font-Bold="True" Font-Size="Larger" ForeColor="Chocolate"></asp:RadioButtonList>
                    
                    <asp:Label ID="Label4" runat="server" Text="MILK" Font-Bold="true" Font-Size="X-Large" Font-Underline="true" ForeColor="Brown"></asp:Label>
                        
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT [milk], [id] FROM [ingred] WHERE ([milk] IS NOT NULL)"></asp:SqlDataSource>
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="milk" DataValueField="id" Font-Bold="True" Font-Size="Larger" ForeColor="Chocolate"></asp:RadioButtonList>
                    
                    <asp:Label ID="Label5" runat="server" Text="FLAVOR" Font-Bold="true" Font-Size="X-Large" Font-Underline="true" ForeColor="Brown"></asp:Label>
                        
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT [flavor], [id] FROM [ingred] WHERE ([flavor] IS NOT NULL) AND ([flavor] = 'No Flavor')"></asp:SqlDataSource>
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="flavor" DataValueField="id" Font-Bold="True" Font-Size="Larger" ForeColor="Chocolate"></asp:RadioButtonList>
                        
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource6" DataTextField="flavor" DataValueField="id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT [id], [flavor] FROM [flavors]"></asp:SqlDataSource>

                    <input id="Submit1" type="submit" value="Add To Order"/></div>
                    
				</div>
        </div>        
        </div>
		</div>

</asp:Content>

