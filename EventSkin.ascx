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
	<div class="row">
		<div class="twelve columns">
			<div id="EventsPane" runat="Server"></div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="twelve columns">
				<div id="BottomPane" runat="Server"></div>
			</div>
		</div>
    </div>	
</div>
</main>

<script>
var pathArray = window.location.pathname.split( '/' );
	var secondLevelLocation = pathArray[2];
	
	$(window).load(function(){
		if (secondLevelLocation == "PID") {
				$('html, body').animate({scrollTop: '+=950px'}, 800);
		}
	});	
</script>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->