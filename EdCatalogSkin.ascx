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
	<div class="row no-margin">
		<div class="twelve columns">
			<div class="home_title">Navigate <span>By Topic</span></div>
			<div class="topic_rotator">
				<div class="topic_wrapper">
					<div class="topic_container" data-href="/Education/Education-Catalog/Results/PID/452/FilterMenu/451/FilterCategories/26">
						<img src="<%= SkinPath %>images/education/topics/icons/advance-practice-nursing.png" class="img-responsive" alt="Advanced Practice Nursing" />
						<div class="topic_text">Advanced<br />Practice Nursing</div>
					</div>
					<div class="topic_plus center">
						<img src="/portals/_default/skins/siteskin/images/event_plus.png">
					</div>
				</div>
				<div class="topic_wrapper">
					<div class="topic_container" data-href="/Education/Education-Catalog/Results/PID/452/FilterMenu/451/FilterCategories/34">
						<img src="<%= SkinPath %>images/education/topics/icons/ambulatory-care.png" class="img-responsive" alt="Ambulatory Care" />
						<div class="topic_text">Ambulatory<br />Care</div>
					</div>
					<div class="topic_plus center">
						<img src="/portals/_default/skins/siteskin/images/event_plus.png">
					</div>
				</div>
				<div class="topic_wrapper">
					<div class="topic_container" data-href="/Education/Education-Catalog/Results/PID/452/FilterMenu/451/FilterCategories/19">
						<img src="<%= SkinPath %>images/education/topics/icons/clinical-practice.png" class="img-responsive" alt="Clinical Practice" />
						<div class="topic_text">Clinical<br />Practice</div>
					</div>
					<div class="topic_plus center">
						<img src="/portals/_default/skins/siteskin/images/event_plus.png">
					</div>
				</div>
				<div class="topic_wrapper">
					<div class="topic_container" data-href="/Education/Education-Catalog/Results/PID/452/FilterMenu/451/FilterCategories/28">
						<img src="<%= SkinPath %>images/education/topics/icons/Certification-prep.png" class="img-responsive" alt="Certification Prep" />
						<div class="topic_text">Certification<br />Prep</div>
					</div>
					<div class="topic_plus center">
						<img src="/portals/_default/skins/siteskin/images/event_plus.png">
					</div>
				</div>
				<div class="topic_wrapper">
					<div class="topic_container" data-href="/Education/Education-Catalog/Results/PID/452/FilterMenu/451/FilterCategories/20">
						<img src="<%= SkinPath %>images/education/topics/icons/professional-dev.png" class="img-responsive" alt="ProfessionalDevelopment" />
						<div class="topic_text">Professional<br />Development</div>
					</div>
					<div class="topic_plus center">
						<img src="/portals/_default/skins/siteskin/images/event_plus.png">
					</div>
				</div>
				<div class="topic_wrapper">
					<div class="topic_container" data-href="/Education/Education-Catalog/Results/PID/452/FilterMenu/451/FilterCategories/33">
						<img src="<%= SkinPath %>images/education/topics/icons/nurse-navigation.png" class="img-responsive" alt="Nurse Navigation" />
						<div class="topic_text">Nurse<br />Navigation</div>
					</div>
					<div class="topic_plus center">
						<img src="/portals/_default/skins/siteskin/images/event_plus.png">
					</div>
				</div>
				<div class="topic_wrapper">
					<div class="topic_container" data-href="/Education/Education-Catalog/Results/PID/452/FilterMenu/451/FilterCategories/27">
						<img src="<%= SkinPath %>images/education/topics/icons/Pain-Management.png" class="img-responsive" alt="Pain Management" />
						<div class="topic_text">Pain<br />Management</div>
					</div>
					<div class="topic_plus center">
						<img src="/portals/_default/skins/siteskin/images/event_plus.png">
					</div>
				</div>
				<div class="topic_wrapper">
					<div class="topic_container" data-href="/Education/Education-Catalog/Results/PID/452/FilterMenu/451/FilterCategories/24">
						<img src="<%= SkinPath %>images/education/topics/icons/Patient-Populations.png" class="img-responsive" alt="Patient Populations" />
						<div class="topic_text">Patient<br />Populations</div>
					</div>
					<div class="topic_plus center">
						<img src="/portals/_default/skins/siteskin/images/event_plus.png">
					</div>
				</div>
				<div class="topic_wrapper">
					<div class="topic_container" data-href="/Education/Education-Catalog/Results/PID/452/FilterMenu/451/FilterCategories/25">
						<img src="<%= SkinPath %>images/education/topics/icons/Trauma.png" class="img-responsive" alt="Trauma" />
						<div class="topic_text">Trauma</div>
					</div>
					<div class="topic_plus center">
						<img src="/portals/_default/skins/siteskin/images/event_plus.png">
					</div>
				</div>
			</div>	
			<div id="FullWidthPane" runat="Server"></div>
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
$(document).ready(function(){
	$('.topic_rotator').slick({
		centerMode: true,
		centerPadding: '300px',
		slidesToShow: 3,
		slidesToScroll: 1,
		infinite: true,
		speed: 700,
		responsive: [
			{
				breakpoint: 1300,
				settings: {
					centerMode: true,
					centerPadding: '60px',
					slidesToShow: 3
				}
			},
			{
				breakpoint: 900,
				settings: {
					centerMode: true,
					centerPadding: '160px',
					slidesToShow: 1
				}
			},
			{
				breakpoint: 700,
				settings: {
					centerMode: true,
					centerPadding: '60px',
					slidesToShow: 1
				}
			},
			{
				breakpoint: 480,
				settings: {
					//arrows: false,
					centerMode: true,
					centerPadding: '20px',
					slidesToShow: 1
				}
			}
  		]
	});
});	
	
$(".topic_container").click(function(){
    window.location = $(this).attr("data-href");
   return false;
}); 		
</script>

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->