<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="page">
		<div>
			<div id="body">
				<div id="figure">
					<img src="images/headline-blog.jpg" alt="Image"/>
				</div>
				<div>
					<a href="blog.aspx" class="blog">Blog</a>
					<div id="blog">
						<ul style="width:auto">
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT * FROM [blogs]"></asp:SqlDataSource>
                 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id" GridLines="Horizontal" AllowPaging="True">
            <Columns>
                <asp:TemplateField SortExpression="name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                       
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#String.Format("http://{0}", Eval("link").ToString()) %>' >
           
             <asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>' Font-Bold="true" Font-Size="Large" ForeColor="Navy"></asp:Label>
                            
            </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField SortExpression="reads">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("reads") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("reads") %>' Font-Size="Medium" Font-Bold="true"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField SortExpression="link">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("link") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField SortExpression="dates">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dates") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("dates") %>' Font-Size="Medium" Font-Bold="true" ForeColor="Navy"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               
            </Columns>







        </asp:GridView>                         
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            <%-- <asp:ListView ID="ListView1" runat="server" AllowPaging="true" DataSourceID="SqlDataSource1" DataKeyNames="Id" style="margin-right: 323px">
                       <LayoutTemplate><table>
                <tr id="groupPlaceHolder" runat="server"></tr>
            </table>
                </LayoutTemplate>
        <GroupTemplate>
            <tr>
                <td id="itemPlaceHolder" runat="server"></td>
            </tr>
        </GroupTemplate>    
            <ItemTemplate>
                <td>
                    <table>
                        <tr>
                            <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#String.Format("http://{0}", Eval("link").ToString()) %>' >
           
             <asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>' Font-Bold="true" Font-Size="Large" ForeColor="Navy"></asp:Label>
                            
            </asp:HyperLink>
                                    </td>

                            <td>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("reads") %>' Font-Size="Medium" Font-Bold="true"></asp:Label>
                                </td>
                            
                            <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("dates") %>' Font-Size="Medium" Font-Bold="true" ForeColor="Navy"></asp:Label>
                                </td>
                        </tr>
           
                    </table>
                </td>
                       
            </ItemTemplate>
                       <EditItemTemplate>


                       </EditItemTemplate>
                <InsertItemTemplate>
                   <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                     <td>Name :
                        <asp:TextBox ID="nametxt" runat="server" Text='<%#Bind("name") %>' />
                    </td>
                    <td> Date :
                        <asp:TextBox ID="datetxt" runat="server" Text="" />
                    </td>
                    <td> Write Blog :
                        <asp:TextBox ID="readstxt" runat="server" Text="" />
                    </td>
                    <td>Link : 
                        <asp:TextBox ID="linktxt" runat="server" Text="" />
                    </td>


                </InsertItemTemplate>

                   </asp:ListView>

<asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Add Blog" OnClick="InsertButton_Click" Visible="false" />
<asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Edit Blog" OnClick="EditButton_Click" Visible="false" />--%>

						</ul>
					</div>
				</div>
			</div>
			</div>
		</div>
	
</asp:Content>

