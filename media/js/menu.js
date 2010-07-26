jQuery.noConflict();
function menu(){
jQuery(" #nav ul ").css({display: "none"}); 
jQuery(" #nav li").hover(function(){
		jQuery(this).find('ul:first').css({visibility: "visible",display: "none"}).show(250);
		jQuery(this).addClass('cblack');
		},function(){
		jQuery(this).find('ul:first').css({visibility: "hidden"});
		jQuery(this).removeClass('cblack');
		});
}

 
 
 jQuery(document).ready(function(){					
	menu();
});
