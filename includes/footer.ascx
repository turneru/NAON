<footer role="contentinfo">
    <div id="footer" class="clearfix">
		<div class="row no-margin">
			<div class="twelve columns">
				<% If Request.IsAuthenticated Then%>
					<a href="/home/ctl/logoff" class="hidden_link">Logoff</a>
				<% Else%>
					<a href="/login.aspx?mode=host" class="hidden_link">Login</a>
				<% End If%>
			</div>
		</div>
		<div id="footer_container">
			<div class="row contact_row">
				<div class="four columns left">
					<p><span class="footer_title">NAON NATIONAL OFFICE</span><br />

					330 N. Wabash Avenue, Suite 2000<br />
					Chicago, IL 60611<br />
					Phone 312.321.3708 <span class="gold">|</span> Fax 312.673.6941<br />
					<a href="mailto:naon@orthonurse.org">naon@orthonurse.org</a></p>
				</div>
				<div class="four columns center">
					<img src="<%= SkinPath %>images/footer_logo.svg" style="width: 145px;"  class="img-responsive" alt="NAON" />
				</div>
				<div class="four columns right">
					<div class="connect desktop">
						Connect with us!
					</div>
					<div class="social">
						<a href="https://www.facebook.com/NationalAssociationOfOrthopaedicNurses" class="social_media" target="_blank"><i class="fab fa-facebook-f fa-fw"></i></a>
						<a href="https://www.linkedin.com/company/naonorg/" class="social_media" target="_blank"><i class="fab fa-linkedin-in fa-fw"></i></a>
						<a href="http://twitter.com/NAONurses" class="social_media" target="_blank"><i class="fab fa-twitter fa-fw"></i></a>
						<a href="https://www.youtube.com/user/TheNAONNetwork" class="social_media" target="_blank"><i class="fab fa-youtube fa-fw"></i></a>
					</div>
				</div>
			</div>
			<div class="copyright">
				<div class="row no-margin">
					<div class="twelve columns">
						Copyright &copy; <span id="year"></span> National Association of Orthopaedic Nurses <span class="gold">|</span> <a href="/Privacy-Policy">Privacy Policy</a> <span class="gold">|</span> <a href="/Terms-Conditions">Terms &amp; Conditions</a>
					</div>	
				</div>
			</div>
		</div>
    </div>
</footer>
<div style="display: none"><dnn:SEARCH ID="dnnSearch2" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" /></div>
	
<script>
$(function() { 
	$('#eventMenu .topLevel').slicknav({
  		allowParentLinks:true,
		showChildren: true,
		prependTo:'#eventmenu_mobile'
	});
});		
	
//Mega menu left side image js	
//About	
$(".35_leftside").html( "<img src='/Portals/_default/skins/siteskin/images/menu_about.png' alt='About' class='img-responsive' />" );
	
//Members
$(".36_leftside").html( "<img src='/Portals/_default/skins/siteskin/images/menu_members.png' alt='Members' class='img-responsive' />");
	
//Events	
$(".37_leftside").html( "<img src='/Portals/_default/skins/siteskin/images/menu_Events.png' alt='Events' class='img-responsive' />");
	
//Education 	
$(".38_leftside").html( "<img src='/Portals/_default/skins/siteskin/images/menu_Education.png' alt='Education' class='img-responsive' />");	
	
//Clinical Resources	
$(".39_leftside").html( "<img src='/Portals/_default/skins/siteskin/images/menu_Clinical_Resources.png' alt='Clinical Resources' class='img-responsive' />");	
	
//Publications
$(".40_leftside").html( "<img src='/Portals/_default/skins/siteskin/images/menu_Publications.png' alt='Publications' class='img-responsive' />");		
	
	
//Add fixed header styles on scroll	
$(function() {
   $(window).scroll(function () {
      if ($(this).scrollTop() > 50) {
         $("#header").addClass("scroll_color");
		 $(".top_links.desktop").hide(); 
      } 
	   
//	  else if ($(window).width() < 1435) {
//		  $("#header").addClass("scroll_color");
//	  }
	   
	  else { 
         $("#header").removeClass("scroll_color");
		  $(".top_links.desktop").show();
      }

   });
});	
	
//Testimonial rotator	
$(document).ready(function(){
	$('.testimonial_rotator').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		fade: true,
		arrows: false,
		autoplay: true,
		autoplaySpeed: 7000,
		infinite: true,
		adaptiveHeight: true,
		speed: 700
	});
});			
	
//Copyright year
var currentYear = (new Date()).getFullYear();
$(document).ready(function() {
	$("#year").text(currentYear);
});	
	
//Slicknav links	
	
function slicknavOpened(trigger) {
    var $trigger = $(trigger[0]);
    if ($trigger.hasClass('slicknav_btn')) {
        // this is the top-level menu/list opening.
        // we only want to trap lower-level/sublists.
        return;
    }
    // trigger is an <a> anchor contained in a <li>
    var $liParent = $trigger.parent();
    // parent <li> is contained inside a <ul>
    var $ulParent = $liParent.parent();
    // loop through all children of parent <ul>
    // i.e. all siblings of this <li>
    $ulParent.children().each(function () {
        var $child = $(this);
        if ($child.is($liParent)) {
            // this child is self, not is sibling
            return;
        }
        if ($child.hasClass('slicknav_collapsed')) {
            // this child is already collapsed
            return;
        }
        if (!$child.hasClass('slicknav_open')) {
            // could throw an exception here: this shouldn't happen
            // because I expect li to have class either slicknav_collapsed or slicknav_open
            return;
        }
        // found a sibling <li> which is already open.
        // expect that its first child is an anchor item.
        var $anchor = $child.children().first();
        if (!$anchor.hasClass('slicknav_item')) {
            return;
        }
        // close the sibling by emulating a click on its anchor.
        $anchor.click();
    });
}	
	
function showTopLinks() {
   var menuTrigger = $(".slicknav_menu > a.slicknav_btn");
    if (menuTrigger.hasClass('slicknav_open')) {
        $(".top_links.mobile").css("opacity", "1");
		$(".logo img").css("margin-top", "65px");
    }
}	
	
function hideTopLinks() {
	var menuTrigger = $(".slicknav_menu > a.slicknav_btn");
    if (menuTrigger.hasClass('slicknav_collapsed')) {
        $(".top_links.mobile").css("opacity", "0");
		$(".logo img").css("margin-top", "0");
    }
}		
	
$(function() { 
	$('#navigation .nav #dnnMenu .topLevel').slicknav({
            allowParentLinks: true,
            beforeOpen: function(trigger) { slicknavOpened(trigger); showTopLinks(); }, 
			beforeClose: function() { hideTopLinks(); }
	});
});		

$(".ms-slide.center, .event_card").click(function(){
	window.location = $(this).attr("data-href");
	return false;
});	
	
//Education catalog comma
$(".catalog_card .category ul.EDN_cf_checkboxList li:nth-child(n+2) .EDN_cf_checkbox_icon").html(",");	
$(".catalog_article .category ul.EDN_cf_checkboxList li:nth-child(n+2) .EDN_cf_checkbox_icon").html(",");	
	
//Education format comma
$(".catalog_card .format ul.EDN_cf_checkboxList li:nth-child(n+2) .EDN_cf_checkbox_icon").html(",");	
$(".catalog_article .format ul.EDN_cf_checkboxList li:nth-child(n+2) .EDN_cf_checkbox_icon").html(",");		
	
//Education CNE Empty fix
$(document).ready(function(){  
	$('.catalog_card .cne').each(function () {
		$(this).css("color", "#faf6eb");
		if ($(this).html() == "No Short Description") {
			$(this).hide();
		}
		else {
			$(this).css("color", "#032E3F");
		}
	});	
});
	
$(".catalog_card .format ul.EDN_cf_checkboxList li:nth-child(n+2) .EDN_cf_checkbox_icon").html(",");	
	
//Education catalog search text placeholder
$(".eds_news_sb_skin.eds_subCollection_search .search_input .input input").attr("placeholder", "I'm looking for...");	

//EasyDNN load more button text
$(".eds_news_sb_skin.eds_subCollection_news .ednMoreArticlesTriggerWrapper > button.trigger > span.actionTextContainer span").text("Load More");

$(".ednMoreArticlesTriggerWrapper > button.trigger").click(function() {
	$('.catalog_card .cne').css("color", "#faf6eb");
	setTimeout(function() { 
		$(".eds_news_sb_skin.eds_subCollection_news .ednMoreArticlesTriggerWrapper > button.trigger > span.actionTextContainer span").text("Load More");
		$('.catalog_card .cne').each(function () {
			$(this).css("color", "#faf6eb");
			if ($(this).html() == "No Short Description") {
				$(this).hide();
			}
			else {
				$(this).css("color", "#032E3F");
			}
		});
		
	}, 150);
});
	
//Slected Menu item parent color	
$(document).ready(function(){  
	if ($('#dnnMenu .subLevel li').hasClass("selected")) {
		$('#dnnMenu .subLevel li').each(function () {
			if ($(this).hasClass("selected")) {
				$(this).parents("li.item.haschild").addClass("selected");
			}
			});	
	}
										
	else {
			if ($("#page_title").hasClass("section_35")) {
				$("#dnnMenu .topLevel li.nav_item_35").addClass("selected");
			}
			if ($("#page_title").hasClass("section_36")) {
				$("#dnnMenu .topLevel li.nav_item_36").addClass("selected");
			}
			if ($("#page_title").hasClass("section_37")) {
				$("#dnnMenu .topLevel li.nav_item_37").addClass("selected");
			}
			if ($("#page_title").hasClass("section_38")) {
				$("#dnnMenu .topLevel li.nav_item_38").addClass("selected");
			}
			if ($("#page_title").hasClass("section_39")) {
				$("#dnnMenu .topLevel li.nav_item_39").addClass("selected");
			}
			if ($("#page_title").hasClass("section_40")) {
				$("#dnnMenu .topLevel li.nav_item_40").addClass("selected");
			}
		}
});		
	
//Accordion js	
$(document).ready(function(){   
    $("div.toggler").click(function() {
        if ($('.toggle_info').is(':visible')) {
        	$(".toggle_info").slideUp(300);
			$("h3 i").removeClass('rotate2').addClass('rotate');
			$(".col-md-12").removeClass("open");
        }

        if ($(this).next(".toggle_info").is(':visible')) {
        	$(this).next(".toggle_info").slideUp(300);
			$(this).prev(".col-md-12").removeClass("open");
			$("h3 i").removeClass('rotate2').addClass('rotate');
        } 

        else {
         	$(this).next(".toggle_info").slideDown(300);
			$(this).find("h3 i").addClass('rotate2');
			$(this).parent(".col-md-12").addClass("open");
        }
  });
});	
	
//Forum js	
$(document).ready(function(){
	$(".edsf_authorProfile a, .edsf_author a, .edsf_usersWrapper .edsf__topUsers a").each(function(){
        $(this).removeAttr("href");
	});
	
	$('.edsf_authorProfile a, .edsf_author a, .edsf_usersWrapper .edsf__topUsers a').removeAttr('href')
	
	$('.edsf_authorProfile a, .edsf_author a').click(function(e) {
		e.preventDefault();
		return false;
	});

	setTimeout(function(){
		$('.edsf_authorProfile a, .edsf_author a, .edsf_usersWrapper .edsf__topUsers a').removeAttr('href')
		$('.edsf_authorProfile a, .edsf_author a').click(function(e) {
			e.preventDefault();
			return false;
		});
	}, 2000);
});	
	
//Navigation function	
function MegaMenuWidths(){
	var navMarginRight = parseInt( $("#header > .container").css('marginRight') );
	var subLevelWidth = (navMarginRight + 875) + "px";
	
	$("#dnnMenu .subLevel, .sublevel_bg").css("width", subLevelWidth);
	
	
	var navMarginLeft = parseInt( $("#header > .container").css('marginLeft') );
	var subLevelimg = (navMarginLeft) + "px";
	
	$("#dnnMenu .menu_side_col").css("width", subLevelimg);
	
	var subLevelWidth2 = (navMarginRight + 875)
	var menuWidth = (subLevelWidth2 - navMarginLeft) + "px";
	
	$(".subLevel .col-md-8").css("width", menuWidth);
	
	if ($(window).width() > 1766) {
		$(".nav_bg").addClass("calc_right_margin");
	}
	
	else {
		$(".nav_bg").removeClass("calc_right_margin");
	}
}	

//Small browser color right top nav bg	
//function colorNav(){
//	if ($(window).width() < 1435) {
//		$("#header").addClass("scroll_color");
//	}
//	
//	else {
//		$("#header").removeClass("scroll_color");
//	}
//}			
	
$(document).ready(function(){   
    MegaMenuWidths();
	//colorNav();
});	
	
$(window).on('resize', function() {
	MegaMenuWidths();
	//colorNav();
});		

//$(function () {
//    $('li.item.haschild').each(function () {
//        $(this).mouseenter(function () {
//			$("#navigation, .nav_bg").addClass('no_br');
//		})
//		
//		$(this).mouseleave(function () {
//			$("#navigation, .nav_bg").removeClass('no_br');
//		});
//    })
//});	
	
$(function () {
    $('.nav #dnnMenu').each(function () {
        $(this).mouseenter(function () {
			$("#navigation, .nav_bg").addClass('no_br');
			$('.sublevel_bg').show();
		})
		
		$(this).mouseleave(function () {
			$("#navigation, .nav_bg").removeClass('no_br');
			$('.sublevel_bg').hide();
		});
    })
});			
	
//Hide elements from DNN login page
if (window.location.href.indexOf("login.aspx?") > -1) {
    $("#lines_left, #lines_right, #news, #events, #testimonial, .circle_row").hide();
}  	
	
$(document).euCookieLawPopup().init({
  popupPosition : 'bottom',
  colorStyle : 'default',
  compactStyle : false,
  popupTitle : 'This website is using cookies',
  popupText : 'This website uses cookies to ensure you get the best experience on our website. To learn more about cookies and how we use them, please view our <a href="/Privacy-Policy">privacy policy</a>.',
  buttonContinueTitle : 'Agree',
  buttonLearnmoreTitle : '',
  buttonLearnmoreOpenInNewWindow : true,
  agreementExpiresInDays : 30,
  autoAcceptCookiePolicy : false,
  htmlMarkup : null
});
	
</script>
	
<script language="vb" runat="server">
	Public Function GetReturnUrl() As String
		If Request.Cookies("lastURL") Is Nothing Then
			Dim aCookie As New HttpCookie("lastURL")
			aCookie.Value = HttpContext.Current.Request.Url.ToString()
			aCookie.Expires = DateTime.Now.AddDays(1)
			Response.Cookies.Add(aCookie)
		Else 
		    Response.Cookies("lastURL").Value = HttpContext.Current.Request.Url.ToString()
			Response.Cookies("lastURL").Expires = DateTime.Now.AddDays(1)
		End If
		
		
		Dim returnUrl As String = "?RedirectURL=" & HttpContext.Current.Request.Url.ToString()		
		Return returnUrl
	End Function
	
</script>