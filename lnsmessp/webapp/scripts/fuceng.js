/*
*global 函数，工具类
*/

       /*
	   *全局定位居中定位
	   */
       var globalCenter = function(obj){
		   var windowWidth = parseInt($(window).width());
		   var windowHeight = parseInt($(window).height());
		   var documentHeight = parseInt($(document).height());
		   var documentTop = parseInt($(document).scrollTop());
		   var thisWidth = parseInt($(obj).width());
		   var thisHeight = parseInt($(obj).height());
		   var left = windowWidth/2-thisWidth/2;
		   var top = (windowHeight/2)-(thisHeight/2)+documentTop;
		   
		   $(obj).css({"left":left,"top":top});
		   }
		   
		/*
		*页面内注入html代码
		*
		*/
       var injectHtml = function(readyHtml){
		   $("body").append(readyHtml);
		   }
       
       /*
	   *点击状态下，得到当前浮层的标识
	   */
       var FloatCategory = function(){
		   $("div[supernatant='supernatant']").click(function(){
              var supernatantName = $(obj).attr("supernatantName");
			   return supernatantName;
															   });
		   }
		   
		
		/*
		*计算浏览器座标、宽、高；计算box宽、高
		*
		*/
        var CalculateLeft = function(obj){
			var ps = $(obj).offset();
			var psleft = parseInt(ps.left);
			return psleft;
			}
		
	    var CalculateTop = function(obj){
			var ps = $(obj).offset();
			var pstop = parseInt(ps.top);
			return pstop;
		}
		
		var DocumentHeight = function(){
			var wheight = parseInt($(window).height());
			var scrollHeight = parseInt($(document).scrollTop());
			var height = wheight + scrollHeight;
			return height;
			}
			
		var ScrollTopTotal = function(){
			var scrollHeight = parseInt($(document).scrollTop());
			return scrollHeight;
			}
		
		var WindowWidth = function(){
			var width = parseInt($(window).width());
			return width;
			}
			
		var WindowHeight = function(){
			var height = parseInt($(window).height());
			return height;
			}
		
		var BoxWidth = function(obj){
			var width = parseInt($(obj).width());
			return width;
			}
			
		var BoxHeight = function(obj){
			var height = parseInt($(obj).height());
			return height;
			}
          
		  
	   /*
	   *辅助click
	   */
	   var HelpClickPa = function(obj){
		   setTimeout(function(){$(obj).click();},"6000");
		   }
	   


/*
*以下为应用js，不涉及工具类
*
*/

/*
*背景浮层 涉及到的函数：AllOfBg()/Bghide()/Bgshow();
*
*/
/*整个背景浮层，为黑色透明*/
       var AllOfBg = function(){
		   var readyHtml = "<iframe id='AllOfIframe'></iframe><div id='AllOfBg'></div>";
		   var windowWidth = $(window).width()-5;
		   var documentHeight = $(document).height();
		   $("body").append(readyHtml);
		   $("#AllOfIframe").css({"width":windowWidth,"height":documentHeight});
		   $("#AllOfBg").css({"width":windowWidth,"height":documentHeight});
		   /* 
		   $("#AllOfBg").click(function(){
									   Bghide();
									   });
             */
	       }
       var Bghide = function(){
		   DailogHide();
		   $("#AllOfIframe").hide();
		   $("#AllOfBg").hide();
		   $("div[supernatant='supernatant']").hide();
		   }
		   
	   var Bgshow = function(){
		   $("#AllOfIframe").show();
		   $("#AllOfBg").show();
		   }
		   
		   
		   
/*
*Dialog对话框
*
*
*/
      var AllOfDailog = function(num){
		      var readyHtml="";
		      if(num=="1"){
			    readyHtml = "<div class='DialogFuceng' supernatant='supernatant' supernatantName='.DialogFuceng'><div class='DialogContent' ><h3 class='DialogTitle'></h3><div class='clearBoth'></div><p class='DialogLeft'></p><p class='DialogRight'></p><div class='DialogClose'></div></div></div>";
			  }else if(num=="2"){
				readyHtml="<div id='newDialogSpc'><p><b></b><a href='javascript:void(0);'></a></p><div class='clearBoth'></div><div class='newDialogCotent'></div></div>";  
			  }else if(num=="3"){
				readyHtml="<div id='newDialogSpcLine'><p><b></b><a href='javascript:void(0);'></a></p><div class='clearBoth'></div><div class='newDialogCotentLine'></div></div>";  
			  }else if(num=="4"){
			    readyHtml="<div id='adBoxLineOn'><p><a href='javascript:void(0);'></a></p><span><a href='' target='_blank'></a></span></div>";
			  }else if(num=="5"){
				readyHtml="<div id='mobileWarpBox'><div class='mobileContent'><img /><div class='closeDialogButton'></div></div></div>";
				  }else{
				readyHtml = "<div class='DialogFuceng' supernatant='supernatant' supernatantName='.DialogFuceng'><div class='DialogContent' ><h3 class='DialogTitle'></h3><div class='clearBoth'></div><p class='DialogLeft'></p><p class='DialogRight'></p><div class='DialogClose'></div></div></div>";
				  }

		   $("body").append(readyHtml);
		  }
		  

      var InsertDailog = function(title,content,picStyle){
		  
		   globalCenter(".DialogFuceng");
		   globalCenter("#newDialogSpc");
		   
		   DargetFloat("#newDialogSpc")
		   
		   if(picStyle==null||picStyle==""){
			   $("p.DialogLeft").addClass("Num2"); 
		   }else{
			   $("p.DialogLeft").addClass("Num"+picStyle);   
				   }
		   $("h3.DialogTitle").text(title);
		   $("#newDialogSpc p b").text(title);
		   $(".DialogRight").text(content);
		   $(".newDialogCotent").text(content);
		   
		   
		   totalClose(".DialogClose");
		   totalClose("#newDialogSpc p a");
 
		  }
		  
		  
	  var totalClose = function(obj){
		    $(obj).click(function(){
			  Bghide();
			  DailogHide();					  
								  });
		  }
  
	  var DailogHide = function(){
		   $(".DialogFuceng").hide();
		   $("#newDialogSpc").hide();
		  }
		  
	  var DailogShow = function(){
		   $(".DialogFuceng").show();
		   $("#newDialogSpc").show();
		  }
		  
/*
*对联广告弹出效果
*
*
*/  
	  var InsertAdDialog = function(imgLeft,imgRight,srcLeft,srcRight){
		       var aimgHtml = "<img src="+imgLeft+" border='0' />";
			   var bimgHtml = "<img src="+imgRight+" border='0' />";
			   $("#adBoxLineOn span a").append(aimgHtml);
			   $("#adBoxLineOnSpc span a").append(bimgHtml);
			   $("#adBoxLineOn").find("span a").attr("href",srcLeft);
			   $("#adBoxLineOnSpc").find("span a").attr("href",srcRight);
			   ScrollAdTop("#adBoxLineOn");
			   ScrollAdTop("#adBoxLineOnSpc");
			   ClickObj("#adBoxLineOn p a");
			   ClickObj("#adBoxLineOnSpc p a");
		  }	
		  
	  var ClickObj = function(obj){
		   $(obj).click(function(){
				$(this).parent().parent().hide();  				 
								 });
		  }
		  
	  var ScrollAdTop = function(obj){
		  $(window).scroll(function(){
			 var scrollHeight = ScrollTopTotal()+280;
			 setTimeout(function(){$(obj).css("top",scrollHeight);},500);
									});
		  }
/*
*右下角弹出广告
*
*
*/		  
	   var InsertRigthContent = function(title,content,tyle){
		   $("#newDialogSpcLine").find("p b").text(title);
		   $(".newDialogCotentLine").text(content);
		   resetDialog("#newDialogSpcLine",tyle);
		   }
		 
		 
	   var resetDialog = function(obj,tyle){
		   if(tyle=="fade"){
			   var top = DocumentHeight() - BoxHeight(obj) - 2;
			   $(obj).css({"top":top,"right":"0"});
			   $(obj).fadeIn();
			   HelpClickPa(obj+" p a");
			   $(obj).find("p a").click(function(){
						$(obj).fadeOut();				
											});
			   ScrollChange(obj);			   
		   }else if(tyle=="slide"){
			   //预定义
			   var tops = DocumentHeight() - BoxHeight(obj) - 2;
			   $(obj).css({"top":top,"right":"0"});
			   var left = CalculateLeft(obj);
			   var top = CalculateTop(obj);
			   var documentHeight = DocumentHeight();
			   var heights = BoxHeight(obj);
			   //实现动作指令
			   $(obj).css({"top":documentHeight,"display":"block","height":"0"});
			   $(obj).animate({top:tops,height:heights},1000,function(){HelpClickPa(obj+" p a")})
			   
			   $(obj+" p a").bind("click",function(){
					 $(obj).animate({top:documentHeight,height:"0"},1000,function(){
					       $(obj).css({"top":top,"height":heights,"display":"none"});
						   $(obj+" p a").unbind("click"); 	
																				  })							   
												   })		   
	  
			  ScrollChange(obj);
		   }else if(tyle=="show"){   
			   var top = DocumentHeight() - BoxHeight(obj) - 2;
			   $(obj).css({"top":top,"right":"0"});
			   $(obj).show();
			   HelpClickPa(obj+" p a");
			   $(obj+" p a").click(function(){
						$(obj).hide();					
											});
			   ScrollChange(obj);
		   }else{
			   var top = DocumentHeight() - BoxHeight(obj) - 2;
			   $(obj).css({"top":top,"right":"0"});
			   $(obj).show();
			   $(obj+" p a").click(function(){
						$(obj).hide();					
											});
			   ScrollChange(obj);
			   
		   }
   
       }
	   
	   
	   
	   var ScrollChange = function(obj){
		   $(window).scroll(function(){
									var dHeight = DocumentHeight();
									var bheight = BoxHeight(obj)+2;
									var height = dHeight-bheight;
									setTimeout(function(){$(obj).css("top",height);},"500");
									 });
		   }
		  
		  
	  /*
	  *
	  *插入浮层并弹出Iframe对话框
	  *
	  */
	  
	  var AllOfIframe = function(){
		  var readyHtml = "<div id='iframeDialogCenter' supernatant='supernatant' supernatantName='#iframeDialogCenter'><iframe scrolling='no' frameborder='0' width='100%' height='100%'></iframe><div class='xcloseall'></div></div>";
		  $("body").append(readyHtml);
		  }
		  
	  /*
	  *
	  *
	  */
	  var InsertIframeDialog = function(src,width,height,scrolling,frameborder,index){
		  
			  if(width==""){
				  width="400";
			   }
			  if(height==""){
				  height="350";
				  }
			  if(scrolling==""){
				  scrolling="no";
				  }
			  if(frameborder==""){
				  frameborder="0";
				  }
			  if(index==""){
				  index="90";
				  }
				 
			 $("#iframeDialogCenter").css("width",width);
			 $("#iframeDialogCenter").css("height",height);

			 $("div#iframeDialogCenter").css("z-index",index);
			 $("#iframeDialogCenter iframe").attr("scrolling",scrolling);
			 $("#iframeDialogCenter iframe").attr("frameborder",frameborder);
			 $("#iframeDialogCenter iframe").attr("src",src);
			 globalCenter("#iframeDialogCenter");
			 fuzhugdialogcenter();
		  }
		  
		  var fuzhugdialogcenter = function(){
			  $(".xcloseall").click(function(){
								   Bghide();
                                   $("#iframeDialogCenter").find("iframe").attr("src","");							   
								   })
			  }
		  /*
		  *
		  */
		  
		  
		    var IframeDailogShow = function(){
		   $("#iframeDialogCenter").show();
		  }
		  
		    var IframeDailogHide = function(){
		   $("#iframeDialogCenter").hide();
		   $("#iframeDialogCenter").find("iframe").attr("src","");
		  }
		  
		  /**
		  *下拉广告效果
		  **/
		  
		  
		    var AdBlink = function(obj,speed,stagnate){
			  $(obj).slideDown(speed,function(){
				  setTimeout(function(){ $(obj).slideUp(speed);},stagnate);
			  });
			}
		/*
		*拖拽特效
		*
		*
		*
		*/
		
		var DargetFloat = function(obj){
			 $(obj).css("position","absolute");
			   var zindex;
			   var xmoveobj;
			   $(obj).live("mousedown",function(e){
                    $(this).unbind("mouseup");	
					zindex=$(this).css("z-index");
					//zindex="99999";
					$(this).css("cursor","move");	
					$(this).css("z-index","999999999");
					//alert(zindex);
					MoveTar(e,this);	
				     								});	
			   
				$(obj).live("mouseup",function(e){
				$(this).css("cursor","default");							   
				$(document).unbind("mousemove");
				$(this).unbind("mousedown");
				$(this).css("z-index",zindex);
				});

				
				

			}
			
		var MoveTar = function(e,obj){

			  var dragposition = $(obj).offset();
			  dragleft = parseInt(dragposition.left);
			  dragtop = parseInt(dragposition.top);
			  var left = parseInt(e.pageX);
			  var top = parseInt(e.pageY);
			  dragleft = left - dragleft;
			  dragtop = top - dragtop;
			  Mouseposition(obj,dragleft,dragtop);
			
			
			};
			
		var Mouseposition = function(obj,dragleft,dragtop){
				$(document).bind("mousemove",function(e){												  
				var left = parseInt(e.pageX) - dragleft;
				var top = parseInt(e.pageY) - dragtop;
				var moveStatus =$(obj).css("cursor");
				if(moveStatus=="move"){
					$(obj).css({"left":left,"top":top});
					}				
				
				});
				
				};
		  
		
		/**
		*
		*
		*
		*mobileDialog
		*
		*
		*
		*
		*
		*/
		  
		var MobileDalogFuceng = function(obj){
			    $(obj).unbind("click");
				$(obj).bind("click",function(){
				var dis = $("#mobileWarpBox").css("display");
				//alert(dis);
					if(dis=="none"){
					
					var width = BoxWidth(this);
					var height = BoxHeight(this);
					var src = $(this).attr("src");
					NewtotalNum("#mobileWarpBox img",width,height,src,this);
					}
											 });
		
						
			}
			
		var NewtotalNum = function(obj,width,height,src,souce){
			$(obj).attr("src",src);
			$(obj).css({"width":width,"height":height});
			var ileft = parseInt($(souce).offset().left)-10;
			var itop = parseInt($(souce).offset().top)-10;
			
			var tleft= (WindowWidth()/2)-(BoxWidth("#mobileWarpBox")/2);
			var ttop= (WindowHeight()/2)-(BoxHeight("#mobileWarpBox")/2)+ScrollTopTotal(souce);
			
		    //
		    $("#mobileWarpBox").css({"left":ileft,"top":itop});
		    $("#mobileWarpBox").show();
		    $("#mobileWarpBox").animate({left:tleft,top:ttop});
		    CloseClickFuceng(ileft,itop,souce);
		
			
			}
			
		var CloseClickFuceng = function(ileft,itop,souce){
			$(".closeDialogButton").unbind("click");
			$(".closeDialogButton").bind("click",function(){
			$("#mobileWarpBox").animate({left:ileft,top:itop},"slow",function(){$(this).hide();});			
												   
												   });
			}
		  
		  
		  
		  
		  
/*
*
*
*/
