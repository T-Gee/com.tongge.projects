<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<!--banner -->
<div class="banner">
  <dl class="list">

    <dd xtype="a_01">
      <a href="<%=path%>/index.jsp">首页</a>
    </dd>
    <dd xid="0" class="">
      <a href="<%=path%>/technology.do?method=show"">技术</a>
    </dd>
    <dd xid="2" class="">
      <a href="<%=path%>/policy.do?method=show"> 政策服务</a>
      <!--       <ul class="menu_list_object" id="2" style="z-index: 100; left: 504px; top: 159px; width: 92px; display: none;"> -->
      <!--         <li><a href="http://www.bdasme.org/zcfwjs/index.jhtml">服务介绍</a></li> -->
      <!--         <li><a href="http://www.bdasme.org/zcgjzc/index.jhtml">国家政策</a></li> -->
      <!--         <li><a href="http://www.bdasme.org/zcbjszc/index.jhtml">XXX市政策</a></li> -->
      <!--         <li><a href="http://www.bdasme.org/zcxqzc/index.jhtml">新区政策</a></li> -->
      <!--         <li><a href="http://www.bdasme.org/zgczc/index.jhtml">中关村政策</a></li> -->
      <!--       </ul> -->
    </dd>
    <dd xid="3" class="">
      <a href="<%=path%>/introduce.do?method=file"> 中心介绍</a>
      <!--       <ul class="menu_list_object" id="3" style="z-index: 100; left: 596px; top: 159px; width: 92px; display: none;"> -->
      <!--         <li><a href="http://www.bdasme.org/fwjg/index.jhtml">服务介绍</a></li> -->
      <!--         <li><a href="http://www.bdasme.org/jrjs/index.jhtml">服务机构</a></li> -->
      <!--         <li><a href="http://www.bdasme.org/jrfwhydt/index.jhtml">行业动态</a></li> -->
      <!--       </ul> -->
    </dd>
    <dd xid="4" class="">
      <a href="http://www.bdasme.org/#"> 会员</a>
      <!--       <ul class="menu_list_object" id="4" style="z-index: 100; left: 688px; top: 159px; width: 92px; display: none;"> -->
      <!--         <li><a href="http://www.bdasme.org/kjfwtefw/index.jhtml">服务介绍</a></li> -->
      <!--         <li><a href="http://www.bdasme.org/kejs/index.jhtml">服务机构</a></li> -->
      <!--         <li><a href="http://www.bdasme.org/kjfwhydt/index.jhtml">行业动态</a></li> -->
      <!--       </ul> -->
    </dd>
    <!--     <dd xid="5" class=""> -->
    <!--       <a href="http://www.bdasme.org/#"> 商务服务</a> -->
    <!--       <ul class="menu_list_object" id="5" style="z-index: 100; left: 780px; top: 159px; width: 92px; display: none;"> -->
    <!--         <li><a href="http://www.bdasme.org/swfwjg/index.jhtml">服务介绍</a></li> -->
    <!--         <li><a href="http://www.bdasme.org/swfwfwjg/index.jhtml">服务机构</a></li> -->
    <!--         <li><a href="http://www.bdasme.org/swfwhydt/index.jhtml">行业动态</a></li> -->
    <!--       </ul> -->
    <!--     </dd> -->
    <!--     <dd xid="6"> -->
    <!--       <a href="http://www.bdasme.org/#"> 企业之家</a> -->
    <!--       <ul class="menu_list_object" id="6" style="z-index: 100"> -->
    <!--         <li><a href="http://www.bdasme.org/qyzyqly/index.jhtml">一区六园</a></li> -->
    <!--         <li><a href="http://www.bdasme.org/qyzjsdcy/index.jhtml">十大产业</a></li> -->
    <!--         <li><a href="http://www.bdasme.org/qycpzs/index.jhtml">产品展示</a></li> -->
    <!--         <li><a href="http://www.bdasme.org/qyzjxxqhz/index.jhtml">寻求合作</a></li> -->
    <!--       </ul> -->
    <!--     </dd> -->


  </dl>
</div>
<script type="text/javascript">
	$(function() {
		appendJS();
	})
	var appendJS = function() {
		(function() {
			$(".list dd").hover(function() {
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
<!--end banner -->