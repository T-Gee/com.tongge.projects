 $(function(){
     show_dialy();
  })
  
	  //闰年多一天
	  var show_mounth = function(fullYear){
		 return (fullYear%100==0 ? res=(fullYear%400==0 ? 1 : 0) : res=(fullYear%4==0 ? 1: 0));   
	  }
     
	 
	 var show_dialy = function(){
		  var nstr=new Date(); //当前Date资讯
		  var ynow=nstr.getFullYear(); //年份
		  var mnow=nstr.getMonth(); //月份
		  var dnow=nstr.getDate(); //日
		  var n1str=new Date(ynow,mnow,1); //当月第一天Date日期存储器
		
		  var firstday=n1str.getDay(); //当月第一天星期几
		
		  var m_days=new Array(31,28+show_mounth(ynow),31,30,31,30,31,31,30,31,30,31); //各月份的总天数
		
		  var tr_str=Math.ceil((m_days[mnow] + firstday)/7); //表格所需要行数
	      var ptx=0;//起始事件显示
		  var maxptx=2;//最多的先是数目
		  var html = "<table border='1'  align='center' width='262' height='188' border='0' cellspacing='0' cellpadding='0' bordercolor='#d4d4d4'><tr style='font-weight:bold;font-size:16px;'><td align='center' class='red_color'>日</td><td align='center'>一</td><td align='center'>二</td><td align='center'>三</td><td align='center'>四</td><td align='center'>五</td><td align='center' class='green_color'>六</td></tr>";
	     for(var i=0;i<tr_str;i++){
		   html+="<tr>";
		   for(var t=0;t<7;t++){
		     var idx = i*7+t;
			 var date_insert=idx-firstday+1; //计算日期
			 (date_insert<=0 || date_insert>m_days[mnow]) ? date_insert="&nbsp;" : date_insert=date_insert;
			 if(date_insert>0)
			   date_insert==dnow ? html+="<td align='center' class='dialy_spc' xid='"+date_insert+"'><a href='javascript:void(0);'>" + date_insert + "</a></td>":html+="<td align='center' xid='"+date_insert+"'><a href='javascript:void(0);'>" + date_insert + "</a></td>";
			 else
			   html+="<td align='center'>" + date_insert + "</td>";
		   }
		   html+="</tr>";
		 }
		 $("#dialy_mouth").append(html);
                   $(".dialy_path").append("未来几天最新活动有：</br>");
		//加载大事记
		 $(".hidden_path p").each(function(){
		     var xid=$(this).attr("xid");
			 var xpath = $(this).text();
			 var xhref=$(this).find("a").attr("href");
		     $("#dialy_mouth td[xid='"+xid+"']").attr("xpath",xpath);
			 $("#dialy_mouth td[xid='"+xid+"']").addClass("spc_path");
             $("#dialy_mouth td[xid='"+xid+"'] a").attr("href",xhref);
			
			 if(xid>=dnow&&ptx<maxptx){
			    ptx++;
				$(".dialy_path").append("&nbsp;&nbsp;"+xpath+"</br>");
			 }
			 
		 });
		//鼠标移动到大事记显示方式 
		  $("#dialy_mouth td").hover(function(){
		     var xpath = $(this).attr("xpath");
	        if(xpath==""||xpath==null){}else{
			  var ps = $(this).offset();
			  var ps_l = parseInt(ps.left);
			  var ps_t = parseInt(ps.top);
			  var w = parseInt($(this).width());
			  var h = parseInt($(this).height());
			  var sw = parseInt($(".move_warning").width());
			  ps_l -= (sw/2);
			  ps_t += h;
			  $(".move_warning").css({"left":ps_l,"top":ps_t,"display":"block"});
			  $(".move_warning").text(xpath);
			  $(this).addClass("dialy_spc_x");
			}
			 
		  },function(){
		     $(".move_warning").hide();
			 $(".move_warning").text("");
			 $(this).removeClass("dialy_spc_x");
		  });

		
		 
	 }
	 