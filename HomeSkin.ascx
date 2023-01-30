<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<main role="main">

<div id="video-container">
	<div class="desktop">
		<video autoplay muted loop class="fillWidth">
			<source src="/Portals/0/NAON_WebsiteVideoHeader_FINAL.mp4" type="video/mp4">
			Your browser does not support HTML5 video.
		</video>
	</div>
    <div class="mobile">
		<img src="<%= SkinPath %>images/mobile_header.png" alt="NAON Header Background" class="u-full-width" />
	</div>
</div>

<div id="hero">	
	<div class="container">
		<div class="row no-margin">
			<div class="twelve columns">
				<div id="HeroPane" runat="Server"></div>
			</div>
		</div>
	</div>
</div>	

<div id="lines_left">
	<img src="<%= SkinPath %>images/lines_left.png" alt="NAON line design" />	
</div>	
<div id="lines_right">
	<img src="<%= SkinPath %>images/lines_right.png" alt="NAON line design" />	
</div>		
	
<div id="home_body_content">
	<div id="quicklinks">
		<div class="home_container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="ContentPane" runat="Server"></div>
					<!--- Desktop Quicklink Buckets --->
					<div class="row no-margin circle_row desktop">
						<div class="four columns center">
							<div class="bucket_wrapper">
								<div class="circle blue" data-href="https://members.orthonurse.org/my-profile/">
									<div class="inner_circle blue">
										<div class="circle_text">My NAON</div>
									</div>
									<div class="inner_hover">
										<img alt="" class="img-responsive" src="/Portals/_default/skins/siteskin/images/my_naon.png" />
										<div class="circle_hover_text">My NAON</div>
									</div>
								</div>
							</div>
						</div>
						<div class="four columns center">
							<div class="bucket_wrapper">
								<div class="circle gold" data-href="/Events/Congress">
									<div class="inner_circle gold">
										<div class="circle_text">Annual<br />Congress</div>
									</div>
									<div class="inner_hover">
										<img alt="" class="img-responsive" src="/Portals/_default/skins/siteskin/images/annual_congress.png" />
										<div class="circle_hover_text">Annual<br />Congress</div>
									</div>
								</div>
							</div>
						</div>
						<div class="four columns center">
							<div class="bucket_wrapper">
								<div class="circle purple" data-href="/Education/Education-Catalog">
									<div class="inner_circle purple">
										<div class="circle_text">Education<br />Catalog</div>
									</div>
									<div class="inner_hover">
										<img alt="" class="img-responsive" src="/Portals/_default/skins/siteskin/images/education_catalog.png" />
										<div class="circle_hover_text">Education<br />Catalog</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--- Mobile Quicklink Buckets --->
					<div class="row no-margin circle_row mobile">
						<div class="four columns center">
							<div class="bucket_wrapper">
								<div class="circle blue" data-href="/">
									<div class="inner_hover">
										<img alt="" class="img-responsive" src="/Portals/_default/skins/siteskin/images/my_naon.png" />
										<div class="circle_hover_text">My NAON</div>
									</div>
								</div>
							</div>
						</div>
						<div class="four columns center">
							<div class="bucket_wrapper">
								<div class="circle gold" data-href="/Events/Congress">
									<div class="inner_hover">
										<img alt="" class="img-responsive" src="/Portals/_default/skins/siteskin/images/annual_congress.png" />
										<div class="circle_hover_text">Annual<br />Congress</div>
									</div>
								</div>
							</div>
						</div>
						<div class="four columns center">
							<div class="bucket_wrapper">
								<div class="circle purple" data-href="/Education/Education-Catalog">
									<div class="inner_hover">
										<img alt="" class="img-responsive" src="/Portals/_default/skins/siteskin/images/education_catalog.png" />
										<div class="circle_hover_text">Education<br />Catalog</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="news">
		<div class="home_container">
			<div class="home_title">Browse <span>Our Stories</span></div>
			<div class="row two_column no-margin">
				<div class="six columns">
					<div id="LeftPane" runat="Server"></div>
				</div>
				<div class="six columns">
					<div id="RightPane" runat="Server"></div>
				</div>
			</div>
		</div>
	</div>
	<div id="events">
		<div class="home_title">Attend <span>Our Events</span></div>
		<div class="row no-margin">
			<div class="twelve columns">
				<div id="EventsPane" runat="Server"></div>
			</div>
		</div>
	</div>
	<div id="testimonial">
		<div class="home_container">
			<div class="home_title">Become <span>A Member</span></div>
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="BottomPane" runat="Server"></div>
				</div>
			</div>
		</div>
	</div>
</div>
</main>

<script>

$(".ms-slide, .circle").click(function(){
    window.location = $(this).attr("data-href");
   return false;
});   		
	
</script>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->