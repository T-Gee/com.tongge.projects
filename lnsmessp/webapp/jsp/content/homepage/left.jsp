<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<div class="bannerPart">
  <jsp:include page="left/focus.jsp"></jsp:include>



  <!--title -->
  <div class="service">
    <jsp:include page="left/services.jsp"></jsp:include>
  </div>
  <!--end service -->
  <div class="clear"></div>
  <!--menuList -->
  <div class="menuList">
    <div class="listErea">
      <b>主导产业：</b>
      <a href="<%=path%>/technology.do?method=show">电子信息</a>
      &nbsp;|&nbsp;
      <a href="<%=path%>/technology.do?method=show">生物医药</a>
      &nbsp;|&nbsp;
      <a href="<%=path%>/technology.do?method=show">装备制造</a>
      &nbsp;|&nbsp;
      <a href="<%=path%>/technology.do?method=show">汽车制造</a>
      &nbsp;|&nbsp;<br> <b>新兴产业：</b>
      <a href="<%=path%>/technology.do?method=show">新能源和新材料</a>
      &nbsp;
      <a href="<%=path%>/technology.do?method=show">航空航天</a>
      &nbsp;|&nbsp;
      <a href="<%=path%>/technology.do?method=show">文化创意</a>
      &nbsp;|&nbsp;<br> <b>新兴产业：</b>
      <a href="<%=path%>/technology.do?method=show">生产新服务业</a>
      &nbsp;|&nbsp;
      <a href="<%=path%>/technology.do?method=show">科技创新服务业</a>
      &nbsp;|&nbsp;
      <a href="<%=path%>/technology.do?method=show">都市产业</a>
    </div>
  </div>
  <!--end menuList -->
  <div class="clear" style="height: 20px;"></div>

  <script type="text/javascript">
			$(function() {
				$(".pics_middle dl dd").scrollOver({
					leftBar : ".pics_right",
					rightBar : ".pics_left",
					scrollTime : "1000",
					msgStatus : true,
					msg : {
						leftmsg : "已经最后一个!",
						rightmsg : "已经第一个!"
					}

				});
			})
		</script>

  <!-- mapList-->
  <!-- <div class="mapList"> -->
  <!--   <div class="mapLeft"> -->
  <%--     <img src="<%=imagePath%>/test0031.png" width="350" height="307"> --%>
  <!--   </div> -->
  <!--   <div class="mapRight"> -->
  <!--     <h3>产品展示</h3> -->
  <!--     <div class="pics_change"> -->
  <!--       <div class="pics_left"></div> -->
  <!--       <div class="pics_middle"> -->
  <!--         <dl style="width: 3875px;"> -->
  <!--           <dd> -->
  <%--             <a href="<%=path%>/qycpzs/3704.jhtml"><img src="<%=imagePath%>/07105154k4xd.jpg" --%>
  <!--               width="100" height="100"></a> -->
  <!--           </dd> -->
  <!--           <dd> -->
  <%--             <a href="<%=path%>/qycpzs/3703.jhtml"><img src="<%=imagePath%>/07105105h65n.jpg" --%>
  <!--               width="100" height="100"></a> -->
  <!--           </dd> -->
  <!--           <dd> -->
  <%--             <a href="<%=path%>/qycpzs/3702.jhtml"><img src="<%=imagePath%>/07105007nixo.jpg" --%>
  <!--               width="100" height="100"></a> -->
  <!--           </dd> -->
  <!--           <dd> -->
  <%--             <a href="<%=path%>/qycpzs/3701.jhtml"><img src="<%=imagePath%>/07104834soyk.jpg" --%>
  <!--               width="100" height="100"></a> -->
  <!--           </dd> -->
  <!--         </dl> -->

  <!--       </div> -->
  <!--       <div class="pics_right"></div> -->

  <!--     </div> -->
  <!--     <div class="clear" style="height: 15px;"></div> -->
  <!--     <div class="lineBorder5" style="margin-top: 15px;"></div> -->
  <!--     <h3>寻求合作</h3> -->
  <!--     <ul> -->
  <%--       <li>·&nbsp;<a href="<%=path%>/qyzjxxqhz/3689.jhtml" title="安诺优达被认定成为XXX科技研究开发机构">安诺优达被认定成为XXX科技研究开发机构</a></li> --%>
  <%--       <li>·&nbsp;<a href="<%=path%>/qyzjxxqhz/3670.jhtml" title="中立安入驻生物医药园 开发区药代动力有了专业服务商">中立安入驻生物医药园 --%>
  <!--           开发区药代动力有...</a></li> -->
  <%--       <li>·&nbsp;<a href="<%=path%>/qyzjxxqhz/3669.jhtml" title="产业化半年就卖出两百台 中瑞蓝科双绕组驱动电机再树标杆">产业化半年就卖出两百台 --%>
  <!--           中瑞蓝科双绕组...</a></li> -->
  <%--       <li>·&nbsp;<a href="<%=path%>/qyzjxxqhz/3668.jhtml" title="亦庄生物医药园中试公共服务平台试运行 诊断试剂平台连接俩单取得开门红">亦庄生物医药园中试公共服务平台试运行 --%>
  <!--           ...</a></li> -->
  <!--     </ul> -->
  <!--     <div class="lineBorder"></div> -->
  <!--   </div> -->
  <!--   <div class="clear"></div> -->
  <!-- </div> -->
  <!--end mapList -->
  <div class="clear"></div>


</div>