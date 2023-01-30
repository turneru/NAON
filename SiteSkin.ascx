<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">		
	
<div id="page_title" class="section_<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabID %>"></div>	
	
<div id="body_content">
	<div class="container">
		<div class="row">
			<div class="twelve columns">
				<div id="ContentPane" runat="Server"></div>
			</div>
		</div>
    </div>
</div>
</main>
<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->