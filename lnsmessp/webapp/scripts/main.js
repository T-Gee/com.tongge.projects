(function( $ ){
	
   
	   $.fn.tab = function(options){
			var defaults = {
			//相关属性设置
			eventName:"click",
			chooseName:"xtype",
			chooseClass:"spc",
			commonTarget:"pureCommon",
			useFirst:"false",
			useName:"tabFun a:first"
		   }

		var options = $.extend(defaults, options);
		    
			//实现的功能设置
			var tabs=$(this);
		
			tabs.bind(options.eventName,function(){
							
							tabs.removeClass(options.chooseClass);					 
							$(this).addClass(options.chooseClass);					 
							var xtype = $(this).attr(options.chooseName);	
							$("."+options.commonTarget).hide();
							$("#"+xtype).show();
							if(options.useFirst=="true"){
								
								$("#"+xtype).find(options.useName).mouseover();
								//$("."+options.useName).show();
								}
							
														});
			

	   }; 
	   
	 
	 //头部选中
        $.fn.headChoose = function(options){

			    var defaults = {
			//相关属性设置
			chooseName:"xtype",
			chooseClass:"toogle",
			values:"首页"
		   }
		   var options = $.extend(defaults, options);
		   $(this).each(function(){
					var xname = $(this).attr(options.chooseName);
					if(xname==options.values){
			         $(this).addClass(options.chooseClass);
			         }
											 });

		   
		   
			}
			
			
})( jQuery );

$(function(){
		   
		   })

