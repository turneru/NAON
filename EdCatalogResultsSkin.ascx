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
	<div id="catalog_bottom">
		<div class="container">
			<div class="row">
				<div class="four columns">
					<div id="FilterPane" runat="Server"></div>
				</div>
				<div class="eight columns">
					<div id="ResultsPane" runat="Server"></div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>

<style>
	#footer > .row.no-margin {
		background: rgb(207 162 61 / 10%);
	}
	
	.hidden_link, a.hidden_link:link, a.hidden_link:hover, a.hidden_link:visited {
		color: #faf6eb !important;
	}
</style>

<script>
	var pathArray = window.location.pathname.split( '/' );
	var secondLevelLocation = pathArray[4];
	
	$(window).load(function(){
		if (secondLevelLocation == "PID") {
				$('html, body').animate({scrollTop: '+=1050px'}, 800);
		}
	});
	
	$(".edn_filter_menu li.node.level_1 > div > input[type='checkbox']").addClass("filter_checkbox");
	
</script>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->