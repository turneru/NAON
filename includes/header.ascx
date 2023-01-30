<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<!-- FONT
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bitter:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
<script src="//kit.fontawesome.com/9a1fb9d613.js" crossorigin="anonymous"></script>
	
<!-- JS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<dnn:DnnJsInclude runat="server" FilePath="js/StandardMenu.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js" />
<dnn:DnnJsInclude runat="server" FilePath="js/jquery.slicknav.js?v=1.1" PathNameAlias="SkinPath" />

<!-- CSS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<dnn:DnnCssInclude runat="server" FilePath="css/normalize.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/grid.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slicknav.css?v=1.2" PathNameAlias="SkinPath" />
	
<script>
	var version_date=new Date();
	
	document.write('<link href="<%= SkinPath %>css/skeleton.css?v='+ version_date.getMonth() + '.' + version_date.getDate() + '-' + Math.floor(Math.random() * 100) +'" type="text/css" rel="stylesheet"/>');
	
	document.write('<link href="<%= SkinPath %>css/layout.css?v=1.0'+ version_date.getMonth() + '.' + version_date.getDate() + '-' + Math.floor(Math.random() * 100) +'" type="text/css" rel="stylesheet"/>');
	
	document.write('<link href="<%= SkinPath %>css/StandardMenu.css?v='+ version_date.getMonth() + '.' + version_date.getDate() + '-' + Math.floor(Math.random() * 1000) +'" type="text/css" rel="stylesheet"/>');
	
	document.write('<link href="<%= SkinPath %>css/EventMenu.css?v=1.0'+ version_date.getMonth() + '.' + version_date.getDate() + '-' + Math.floor(Math.random() * 100) +'" type="text/css" rel="stylesheet"/>');
</script>
	

<!--- Rotator Stuff
Info on how to use http://kenwheeler.github.io/slick/
-----------------------------------------------------------   --->
<dnn:DnnJsInclude runat="server" FilePath="js/slick.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slick.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slick-theme.css" PathNameAlias="SkinPath" />

<!--- FancyBox Stuff
Info on how to use http://fancyapps.com/fancybox/3/
----------------------------------------- --->
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/3.4.0/jquery.fancybox.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/3.4.0/jquery.fancybox.min.css" />
	
<!--- GDPR Popup
-------------------------------------------------- -->
<dnn:DnnCssInclude runat="server" FilePath="css/jquery-eu-cookie-law-popup.css" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="js/jquery-eu-cookie-law-popup.js" PathNameAlias="SkinPath" />		

	
<!-- Favicon
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" href="<%= SkinPath %>images/favicon.png">
<header role="banner">	
    <div id="header">
        <div class="row no-margin">
			<div class="col-md-3 left">
				<div class="logo">
					<a href="/"><img src="<%= SkinPath %>images/logo.svg" style="width: 196px;"  class="img-responsive" alt="NAON" /></a>
				</div>
			</div>
			<div class="col-md-6 nav_bg desktop">
				&nbsp;
			</div>
			<div class="col-md-3 right desktop">
<!----------------------- Desktop Top Links ----------------------------------->
				<div class="top_links desktop">
					<% If Request.IsAuthenticated Then%>
						<div class="user_info_container">
							<a href="https://members.orthonurse.org/my-profile/" class="header_links">My NAON</a><span class="spacing">&nbsp;&nbsp;&nbsp;</span>
							<span class="vert_links"><br /></span>
							<a href="https://members.orthonurse.org/account/logout.aspx" class="header_links">Logout</a><span class="spacing">&nbsp;&nbsp;&nbsp;</span>
							<span class="vert_links"><br /></span>
							<a href="/search" class="header_links">Search</a><span class="spacing">&nbsp;&nbsp;&nbsp;</span>
							<a href="https://members.orthonurse.org/pages/checkout.aspx" class="header_links" target="_blank"><i class="fa-solid fa-cart-shopping"></i></a>
						</div>	
					<% Else%>
						<a href="/login.aspx?appctx=/NavToAuth.aspx<%=GetReturnUrl()%>" class="header_links">Login</a><span class="spacing">&nbsp;&nbsp;&nbsp;</span>
						<a href="/search" class="header_links">Search</a><span class="spacing">&nbsp;&nbsp;&nbsp;</span>
						<a href="https://members.orthonurse.org/pages/checkout.aspx" class="header_links" target="_blank"><i class="fa-solid fa-cart-shopping"></i></a>
					<% End If%>
				</div>
			</div>
        </div>
		<div class="container">
			<div class="row no-margin nav_wrapper">
				<div class="twevle columns">
					<!--- Navigation Include--->
					<!--#include file="navigation.ascx"-->
				</div>
			</div>
		</div>
<!-------------------------------- Mobile Top Links -------------------------------->			
		<div class="top_links mobile">
			<% If Request.IsAuthenticated Then%>
				<a href="https://naon.mpxstage.com/my-profile/" class="header_links">My NAON&nbsp;&nbsp;<i class="fas fa-user"></i></a>&nbsp;&nbsp;&nbsp;
				<a href="https://naon.mpxstage.com/account/logout.aspx" class="header_links">Logout&nbsp;&nbsp;<i class="fas fa-lock-open"></i></a>&nbsp;&nbsp;&nbsp;
			<% Else%>
				<a href="/login.aspx?appctx=/NavToAuth.aspx<%=GetReturnUrl()%>" class="header_links">Login&nbsp;&nbsp;<i class="fas fa-user"></i></a>&nbsp;&nbsp;&nbsp;
			<% End If%>
				<a href="/search" class="header_links">Search&nbsp;&nbsp;<i class="fa-solid fa-magnifying-glass"></i></a>
		</div>					
    </div>
</header>	