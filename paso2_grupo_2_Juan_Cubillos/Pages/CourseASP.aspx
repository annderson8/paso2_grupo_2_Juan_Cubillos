<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Pages/SiteInternal.Master" CodeBehind="CourseASP.aspx.vb" Inherits="paso2_grupo_2_Juan_Cubillos.CourseASP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
	<div id="survey" class="font-weight-light">
		<div class="container tm-container-max-800">
			<div class="row">
				<div class="col-12">
					<header class="mt-5 mb-5 text-center">
						<h1 class="font-weight-light tm-form-title">Teaching resources ASP.NET Course</h1>
						<p class="tm-form-description">
							On this page you will find teaching resources to learn about the selected topic.
						</p>
					</header>
					<div class="tm-bg-black tm-form-block">
						<p class="mb-4">
							Written resource
						</p>
						<iframe src="https://pdfs.semanticscholar.org/dd2d/26f9720c3eddb431c457fefdd49c555dc692.pdf" style="width: 600px; height: 500px;"></iframe>
					</div>
					<div class="tm-bg-black tm-form-block">
						<p class="mb-4">
							Visual resource
						</p>
						<iframe src="https://www.youtube.com/embed/OEVsKYnlBao" style="width: 600px; height: 500px;"></iframe>
					</div>
					<div class="tm-bg-black tm-form-block">
						<p class="mb-4">
							Audio resource
						</p>
						<iframe src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/449244456&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true" style="width: 600px; height: 500px;"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
