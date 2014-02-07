(function( $ ){
        //first
	   $.fn.scrollOver = function(options){
		   
			var defaults = {
			//相关属性设置
			eventName:"click",
			leftBar:".leftBar",
			rightBar:".rightBar",
			leftSpcClass:"spc",
			rightSpcClass:"spc",
			scrollWidth:"0",
			fixWidth:"0",
			scrollTime:"1000",
			maxFixWidth:"0",
			msgStatus:false,
			msg:{
				  leftmsg:"Already the last one!",
				  rightmsg:"Already the first one!"
				}
		   }
		var options = $.extend(defaults, options);
			//实现的功能设置
			var _this=$(this);
			
			var _this_parent = _this.parent();
			var totalWidth = parseInt(_this.width());
			var gowidth=0;
		    var _plength = parseInt(_this.siblings().length);
		    _this_parent.css("width",_plength*totalWidth); 
			var maxWidth = parseInt(_this_parent.width())-parseInt(_this.parent().parent().width());
			
			if(options.maxFixWidth=="0"){}else{
				maxWidth+=parseInt(options.maxFixWidth);
				}
				
			var _scrollW=0;
			if(options.scrollWidth=="0"){
				_scrollW = parseInt(totalWidth);
				}else{
			    _scrollW= parseInt(options.scrollWidth)+parseInt(options.fixWidth);		
					}
					
			 var pwarp = function(){
				    $(options.leftBar).bind(options.eventName,function(){
						$(options.leftBar).unbind(options.eventName);
				        $(options.rightBar).removeClass(options.rightSpcClass);
			    		moveDirect("left");	
						
													 });
				 }
			var awarp = function(){
				    $(options.rightBar).bind(options.eventName,function(){
						$(options.rightBar).unbind(options.eventName);
				        $(options.leftBar).removeClass(options.leftSpcClass);
			    		moveDirect("right");								 
											 });
				}
			 
			pwarp();
			awarp();
			var moveNum=1;
			var moveDirect = function(direct){
				
				if(direct=="left"){
					 gowidth+=totalWidth;
					
					if(gowidth<=maxWidth){
						   
							 _this_parent.animate({
											 marginLeft:-gowidth
											 },parseInt(options.scrollTime),function(){
												  pwarp();
												  if(gowidth>=maxWidth){
												    $(options.leftBar).addClass(options.leftSpcClass);
												    if(options.msgStatus==true){
													    setTimeout(function(){alert(options.msg.leftmsg);},10);
													 }
												  
												   } 
												 
												 });
	 
						}else{
						gowidth-=totalWidth;
						pwarp();
							}
					
					}else if(direct=="right"){
					     gowidth -=totalWidth ;
						 
						if(gowidth>=0){
							
							_this_parent.animate({
												 marginLeft:-gowidth
												 },parseInt(options.scrollTime),function(){
													 awarp();
													 if(gowidth<=0){
													  $(options.rightBar).addClass(options.leftSpcClass);
													  if(options.msgStatus==true){
														  setTimeout(function(){alert(options.msg.rightmsg);},10);
														  }
													}
													 
													 
													 
													 });
							
							}else{
							gowidth +=totalWidth ;
							awarp();
								}
						
						
						}
				
				}

	   }; 
	   //end first
	  
			
	
			
})( jQuery );

