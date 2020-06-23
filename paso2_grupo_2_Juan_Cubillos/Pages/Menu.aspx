<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="SiteInternal.Master" CodeBehind="Menu.aspx.vb" Inherits="paso2_grupo_2_Juan_Cubillos.Menu" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<div class="container tm-home-mt tm-home-container">
		<div class="row">
			<div class="col-12">
				<div class="tm-home-left">
					<h1 class="tm-site-title">Welcome to Courses UNAD</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
				<div class="tm-home-left mt-3 font-weight-light">
					<p class="tm-mb-35">Please select the course you want to take</p>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
				<ul class="list-group tm-home-list tm-bg-black font-weight-light">
					<li class="d-flex justify-content-between align-items-center">
						<asp:HyperLink ID="HyperLinkASPNETCourse" NavigateUrl="~/Pages/CourseASP.aspx" class="tm-white-text" runat="server">ASP.NET Course</asp:HyperLink>
					</li>
					<li class="d-flex justify-content-between align-items-center">
						<asp:HyperLink ID="HyperLinkAmazonCourse" NavigateUrl="https://moduloaprendizaje.azurewebsites.net/Amazon.aspx" class="tm-white-text" runat="server" Target="_blank">Amazon Course</asp:HyperLink>
					</li>
				</ul>
			</div>
		</div>
	</div>
</asp:Content>
