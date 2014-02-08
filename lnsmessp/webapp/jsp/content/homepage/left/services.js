
$(window).load(function() {
	$(".serviceBox .serLeft li").mousemove( function(item) {
			$(".serviceBox .serRight").hide();
			$(".serviceBox #" + this.xtab).show();
			$(".serviceBox .serLeft li").removeClass("spc");
			$(this).addClass("spc");
	});
});
	
