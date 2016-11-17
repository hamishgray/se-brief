
/*=========================
 *	Banner Colouring
 *========================*/

$(document).ready(function () {
	var back = ["#4d5f73","#28773c","#c4696e","#DCAD46","#8a5c9b"];
	var rand = back[Math.floor(Math.random() * back.length)];
	$('#banner').css('background-color',rand);
})


$(document).scroll(function(){

	var st=($(document).scrollTop()/4);
	var opac=1-($(document).scrollTop()/600);

	$('#banner .banner-inner').css({
		"margin-top":st,
		"margin-bottom":-st,
		"opacity":opac
	});

});


/*=========================
 *	Mobile Nav
 *========================*/

$('#nav_btn').click(function(){
	var nav = $('#nav');
	if($('body').hasClass('nav')){
		$('body').removeClass('nav');
	}else{
		$('body').addClass('nav');
	}
});

$(document).click(function(event) {
    if($('body').hasClass("nav")) {
	    if(!$(event.target).closest('#header').length && !$(event.target).is('#header')) {
			$('body').removeClass('nav');
        }
    }
})


/*=========================
 *	Accordion
 *========================*/

$('.accordion__toggle').click(function(){
	var target = $(this).attr('data-accordion-target');
	var slide = $('#'+target);
	if(slide.hasClass('active')){
		$(slide).slideUp().removeClass('active').addClass('inactive');
	}else{
		$(slide).slideDown().addClass('active').removeClass('inactive');
	}
});



///////////////////////////////////////
//      Tabs
///////////////////////////////////////

$('.tabs__link').click(function(){

  event.preventDefault();
  var tab = $(this).attr("data-tab");
  var target = $('#'+tab);

	if($(this).hasClass('active')){
		$('.tabs__link.active').removeClass('active');
	  $(this).removeClass('active');
	}else{
		$('.tabs__link.active').removeClass('active');
	  $(this).addClass('active');
	}

	if(target.hasClass('active')){
		$('.tabs__tab.active').removeClass('active').addClass('inactive');
	  target.removeClass('active').addClass('inactive');
	}else{
		$('.tabs__tab.active').removeClass('active').addClass('inactive');
	  target.removeClass('inactive').addClass('active');
	}

});


/*=========================
 *	Delete Prompt
 *========================*/

 var deleteLinks = document.querySelectorAll('.delete');

 for (var i = 0; i < deleteLinks.length; i++) {
	 deleteLinks[i].addEventListener('click', function(event) {
     event.preventDefault();
     var choice = confirm(this.getAttribute('data-confirm'));
     if (choice) {
       window.location.href = this.getAttribute('href');
     }
	 });
 }

