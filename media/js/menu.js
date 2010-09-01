
function menu(){
$(" #nav ul ").css({display: "none"}); 
$(" #nav li").hover(function(){
		$(this).find('ul:first').css({visibility: "visible",display: "none"}).show(250);
		$(this).addClass('cblack');
		},function(){
		$(this).find('ul:first').css({visibility: "hidden"});
		$(this).removeClass('cblack');
		});
}

 
 
 $(document).ready(function(){					
	menu();
});
