<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
		<div>
			<div id="body">
				
                <div id="figure">
					<img src="images/headline-home.jpg" alt="Image" /> 
                    <span id="home">It's   COFFEE   O'Clock!
                        <br /> <br /> <br /><br /><br /> 
                     </span>
                    
                    </div>
				<div id="featured">
					<span class="whatshot"><a href="menu.aspx">Find out more</a></span>
					<div>
						<a href="menu.aspx"><img src="images/coffee1.jpg" alt="Image"/></a>
						<a href="menu.aspx"><img src="images/coffee2.jpg" alt="Image"/></a>
						<a href="menu.aspx"><img src="images/coffee3.jpg" alt="Image"/></a>
					</div>
				</div>
				<div class="section">
					<ul>
						<li>
							<a href="blog.aspx"><img src="images/coffee-ingredients.jpg" alt="Image"/></a>
							<h2><a href="blog.aspx">Lorem ipsum</a></h2>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in tellus id eros iaculis porttitor eget ultrices mauris. Nulla sodales congue ante, id
							</p>
							<a href="blog.aspx" class="readmore">Read More</a>
						</li>
						<li>
							<a href="blog.aspx"><img src="images/black-coffee.jpg" alt="Image"/></a>
							<h2><a href="blog.aspx">Dolor sit amet</a></h2>
							<p>
								Nulla sodales congue ante, id fermentum mi tincidunt ac. Sed eu vestibulum nisl. Maecenas pharetra hendrerit eros sed laoreet. Maecenas malesuada
							</p>
							<a href="blog.aspx" class="readmore">Read More</a>
						</li>
						<li>
							<a href="blog.aspx"><img src="images/chocolate.jpg" alt="Image"/></a>
							<h2><a href="blog.aspx">Nullam quis</a></h2>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in tellus id eros iaculis porttitor eget ultrices mauris. Nulla sodales congue ante, id
							</p>
							<a href="blog.aspx" class="readmore">Read More</a>
						</li>
					</ul>
					<div>
						<ul>
							<li>
								<h3><a href="blog.aspx">Lorem ipsum</a></h3>
								<span>28 November 2011</span>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. blandit nunc. Donec in velit sed ante interdum condimentum pretium sit amet erat.
								</p>
								<a href="blog.aspx" class="readmore">Read more</a>
							</li>
							<li>
								<h3><a href="blog.aspx">Dolor sit amet</a></h3>
								<span>25 November 2011</span>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								</p>
								<a href="blog.aspx" class="readmore">Read more</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
    
</asp:Content>
