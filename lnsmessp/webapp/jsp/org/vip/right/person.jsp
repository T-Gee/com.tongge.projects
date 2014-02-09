<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<script type="text/javascript" src="<%=path%>/scripts/switch.js"></script>
<div class="channel_top"></div>
<div class="channel_list">
  <h3>申请服务</h3>
  <div class="clear" style="height: 20px;"></div>
  <ul class="list_ul">
    <li class="leve1" xid="0101"><a href="#">服务大厅业务办理</a></li>
    <li class="leve2" id="0101">
      <p xid="010101">
        <a href="<%=path%>/VIP.do?method=compnayacceptlist">企业申请列表</a>
      </p>
      <p xid="010102">
        <a href="<%=path%>/VIP.do?method=serviceslist">机构服务列表</a>
      </p>
    </li>
    <li class="leve1 spc" xid="0102"><a href="#">服务机构推荐</a></li>
    <li class="leve2" id="0102">
      <p xid="010103">
        <a href="<%=path%>/VIP.do?method=servicesRecommCenter&flag=0">政策服务机构推荐</a>
      </p>
      <p xid="010104">
        <a href="<%=path%>/VIP.do?method=servicesRecommCenter&flag=1">金融服务机构推荐</a>
      </p>
      <p xid="010105">
        <a href="<%=path%>/VIP.do?method=servicesRecommCenter&flag=2">科技服务机构推荐</a>
      </p>
      <p xid="010106">
        <a href="<%=path%>/VIP.do?method=servicesRecommCenter&flag=3">商务服务机构推荐</a>
      </p>
      <p xid="010107">
        <a href="<%=path%>/VIP.do?method=servicesRecommCenter&flag=4">其他服务机构推荐</a>
      </p>
    </li>
    <li class="leve1" xid="0103"><a href="#">服务大厅账号管理</a></li>
    <li class="leve2" id="0103">
      <p xid="010108">
        <a href="<%=path%>/VIP.do?method=toUpdPwd&kind=person">修改密码</a>
      </p>
      <p xid="010109">
        <a href="<%=path%>/login.do?op=logout">退出登录</a>
      </p>
    </li>
  </ul>
  <div class="clear" style="height: 90px;"></div>
</div>
<script type="text/javascript">
	$(function() {
		$(".leve1").switchTab({
			commonTarget : ".leve2",
			chooseStatus : "0102" //这里放置页面载入时打开菜单的xid数值
		});
	});
	function refresh() {
		$("#guestbookCaptcha").attr("src", "/captcha.svl?d=" + new Date());
	}
</script>