<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<!--banner -->
<div class="banner">
  <dl class="list">
    <dd class="left"></dd>
    <dd xtype="a_01" class="menu">
      <a href="<%=path%>/index.jsp">首页</a>
    </dd>
    <dd xid="0" class="menu">
      <a href="<%=path%>/technology.do?method=show"">技术</a>
    </dd>
    <dd xid="2" class="menu">
      <a href="<%=path%>/policy.do?method=show"> 政策服务</a>
      <!--       <ul class="menu_list_object" id="2" style="z-index: 100; left: 504px; top: 159px; width: 92px; display: none;"> -->
      <!--         <li><a href="<%=path%>/zcfwjs/index.jhtml">服务介绍</a></li> -->
      <!--         <li><a href="<%=path%>/zcgjzc/index.jhtml">国家政策</a></li> -->
      <!--         <li><a href="<%=path%>/zcbjszc/index.jhtml">XXX市政策</a></li> -->
      <!--         <li><a href="<%=path%>/zcxqzc/index.jhtml">新区政策</a></li> -->
      <!--         <li><a href="<%=path%>/zgczc/index.jhtml">中关村政策</a></li> -->
      <!--       </ul> -->
    </dd>
    <dd xid="3" class="menu">
      <a href="<%=path%>/introduce.do?method=file"> 中心介绍</a>
      <!--       <ul class="menu_list_object" id="3" style="z-index: 100; left: 596px; top: 159px; width: 92px; display: none;"> -->
      <!--         <li><a href="<%=path%>/fwjg/index.jhtml">服务介绍</a></li> -->
      <!--         <li><a href="<%=path%>/jrjs/index.jhtml">服务机构</a></li> -->
      <!--         <li><a href="<%=path%>/jrfwhydt/index.jhtml">行业动态</a></li> -->
      <!--       </ul> -->
    </dd>
<!--     <dd xid="4" class=""> -->
<!--       <a href="<%=path%>/#"> 会员</a> -->
      <!--       <ul class="menu_list_object" id="4" style="z-index: 100; left: 688px; top: 159px; width: 92px; display: none;"> -->
      <!--         <li><a href="<%=path%>/kjfwtefw/index.jhtml">服务介绍</a></li> -->
      <!--         <li><a href="<%=path%>/kejs/index.jhtml">服务机构</a></li> -->
      <!--         <li><a href="<%=path%>/kjfwhydt/index.jhtml">行业动态</a></li> -->
      <!--       </ul> -->
<!--     </dd> -->
    <!--     <dd xid="5" class=""> -->
    <!--       <a href="<%=path%>/#"> 商务服务</a> -->
    <!--       <ul class="menu_list_object" id="5" style="z-index: 100; left: 780px; top: 159px; width: 92px; display: none;"> -->
    <!--         <li><a href="<%=path%>/swfwjg/index.jhtml">服务介绍</a></li> -->
    <!--         <li><a href="<%=path%>/swfwfwjg/index.jhtml">服务机构</a></li> -->
    <!--         <li><a href="<%=path%>/swfwhydt/index.jhtml">行业动态</a></li> -->
    <!--       </ul> -->
    <!--     </dd> -->
    <!--     <dd xid="6"> -->
    <!--       <a href="<%=path%>/#"> 企业之家</a> -->
    <!--       <ul class="menu_list_object" id="6" style="z-index: 100"> -->
    <!--         <li><a href="<%=path%>/qyzyqly/index.jhtml">一区六园</a></li> -->
    <!--         <li><a href="<%=path%>/qyzjsdcy/index.jhtml">十大产业</a></li> -->
    <!--         <li><a href="<%=path%>/qycpzs/index.jhtml">产品展示</a></li> -->
    <!--         <li><a href="<%=path%>/qyzjxxqhz/index.jhtml">寻求合作</a></li> -->
    <!--       </ul> -->
    <!--     </dd> -->
  <dd class="right2"></dd>
  <dd class="right"></dd>
  </dl>
</div>
<script type="text/javascript">
	$(function() {
		appendJS();
	})
	var appendJS = function() {
		(function() {
			$(".list dd.menu").hover(function() {
				var ps = $(this).offset();
				var pl = parseInt(ps.left);
				var pt = parseInt(ps.top);
				var w = parseInt($(this).width());
				var h = parseInt($(this).height());
				pt += h - 1;
				pl += 1;
				var xid = $(this).attr("xid");
				$("#" + xid).css({
					"left" : pl,
					"top" : pt,
					"width" : w
				});
				$("#" + xid).show();
				$(this).addClass("spc");
			}, function() {
				var xid = $(this).attr("xid");
				$(this).removeClass("spc");
				$("#" + xid).hide();
			});
		})()
	}
</script>
<div class="logo" ></div>
<!--end banner -->