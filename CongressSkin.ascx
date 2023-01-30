<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">		
	
<div id="page_title" class="section_<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabID %> subsection_<% If PortalSettings.ActiveTab.Level > 0 Then%><%=PortalSettings.ActiveTab.BreadCrumbs(1).TabID %><% Else%><%=PortalSettings.ActiveTab.TabID %><% End If%>"></div>	
	
<div id="body_content" class="section_<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabID %> subsection_<% If PortalSettings.ActiveTab.Level > 0 Then%><%=PortalSettings.ActiveTab.BreadCrumbs(1).TabID %><% Else%><%=PortalSettings.ActiveTab.TabID %><% End If%>">
	<div id="event_nav">
		<div class="event_container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="SubNavPane" runat="Server"></div>
				</div>
			</div>
		</div>	
	</div>
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