(function( $ ){
	
   
	   $.fn.switchTab = function(options){
			var defaults = {
			//相关属性设置
			eventName:"click",
			chooseName:"xid",
			chooseClass:"spc",
			commonTarget:".pureCommon",
			chooseStatus:"0",
			recallBack:function(){
				var _this = arguments[0];
			}
		   }

		var options = $.extend(defaults, options);
		    
			//实现的功能设置
			var tabs=$(this);
			  var setcookieses = function(name,value){
				document.cookie=name+"="+escape(value);
				}
			
			$(".list_ul li p").live("click",function(){
			            var xid = $(this).attr("xid");
			            setcookieses("company_xid",xid);
				   });
			
			
			
			
		    if(options.chooseStatus=="0"){}else{
				$(this+"[xid='"+options.chooseStatus+"']").parent().show();
				$(this+"[xid='"+options.chooseStatus+"']").addClass(options.chooseClass);
				} 
			tabs.bind(options.eventName,function(){
					var xid = $(this).attr(options.chooseName);	
					var display = $("#"+xid).css("display");
					if(display=="none"){
						$(options.commonTarget).hide();
						$("#"+xid).show();
						$(this).addClass(options.chooseClass);
					}else{
						$("#"+xid).hide();
						$(this).removeClass(options.chooseClass);
					}
					options.recallBack.call(this,$(this),xid);
					
														});
			

	   }; 
	   
	 
	
			
})( jQuery );

