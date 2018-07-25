<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="locations.aspx.cs" Inherits="locations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="page">
		<div>
			<div id="body">
				<div id="figure">
					<img src="images/headline-locations.jpg" alt="Image"/>
				</div>
				<div>
					<a href="locations.aspx" class="locations">Locations</a>
					<div>
						<dl>
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT ID, State  FROM [location]">
                            </asp:SqlDataSource>
                           
                            
                            <asp:GridView ID="GridView1" runat="server" GridLines="None" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ID" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="State" HeaderText="" SortExpression="State" ItemStyle-Font-Bold="true" ItemStyle-Font-Size="X-Large" ItemStyle-ForeColor="Chocolate" />
                                   
                                                                    <asp:ButtonField CommandName="Select" Text="SELECT" ItemStyle-Font-Bold="true" ItemStyle-Font-Size="X-Large" ItemStyle-ForeColor="RosyBrown" />
                                   
                                                                    </Columns>
                            </asp:GridView>


                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myDB %>" SelectCommand="SELECT * FROM location WHERE ID = @ID">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <asp:Button ID="AddClick" runat="server" OnClick="Add_Click" Text="Add Location" Font-Bold="true" Font-Size="Medium" ForeColor="wheat" BackColor="Chocolate" />

                            <asp:DetailsView ID="DetailsView1" runat="server" OnItemCommand="DetailsView1_ItemCommand" 
         OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated"
         AutoGenerateRows="False" DataSourceID="SqlDataSource2" DataKeyNames="ID" EnableViewState="False" Width="250" Height="250" GridLines="None">
                                <Fields>
                                    <asp:TemplateField HeaderText="Country  :" SortExpression="Country" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderStyle-ForeColor="Chocolate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Country") %>'  Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                   
                                     <asp:TemplateField HeaderText="State :" SortExpression="State" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderStyle-ForeColor="Chocolate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("State") %>'  Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="City :" SortExpression="City" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderStyle-ForeColor="Chocolate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("City") %>' Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                   
                                     <asp:TemplateField HeaderText="Street : " SortExpression="Street" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderStyle-ForeColor="Chocolate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Street") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Street") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Street") %>'  Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="ZipCode :" SortExpression="Zip" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderStyle-ForeColor="Chocolate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Zip") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Zip") %>'></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Zip") %>' Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
    <%--<asp:CommandField ShowInsertButton="True" />
    --%>
                                    <asp:TemplateField ShowHeader="False">
                                        <InsertItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            </ItemTemplate>
                                    </asp:TemplateField>
                                </Fields>




                            </asp:DetailsView> 
                            
                            
                            
                            
                            
                            </dl>
						</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

