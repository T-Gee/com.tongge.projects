<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<script type="text/javascript" src="<%=path%>/scripts/switch.js"></script>
<div class="channel_top"></div>
<div class="channel_list">
  <h3>申请服务</h3>
  <div class="clear" style="height: 20px;"></div>
  <ul class="list_ul">
    <li class="leve1" xid="0101"><a href="#">业务办理</a></li>
    <li style="display: list-item;" class="leve2" id="0101">
      <p xid="010101">
        <a href="<%=path%>/VIP.do?method=servicesSelect">提供服务查询</a>
      </p>
      <p xid="010102">
        <a href="<%=path%>/VIP.do?method=servicesStatusChange">业务状态处理</a>
      </p>
      <p xid="010103">
        <a href="<%=path%>/VIP.do?method=toProvideServcies">提供服务</a>
      </p>
    </li>
    <li class="leve1" xid="0102"><a href="#">信息管理</a></li>
    <li style="display: none;" class="leve2" id="0102">
      <p xid="010104">
        <a href="<%=path%>/VIP.do?method=forProvideServiceInfo">发布服务机构信息</a>
      </p>
    </li>
    <li class="leve1" xid="0103"><a href="#">账号管理</a></li>
    <li style="display: none;" class="leve2" id="0103">
      <p xid="010105">
        <a href="<%=path%>/VIP.do?method=toUpdPwd">修改密码</a>
      </p>
      <p xid="010106">
        <a href="<%=path%>/VIP.do?method=updAccount">编辑账号信息</a>
      </p>
      <p xid="010107">
        <a href="<%=path%>/login.do?op=logout">退出登录</a>
      </p>
    </li>
  </ul>
  <div class="clear" style="height: 90px;"></div>
</div>
<script type="text/javascript">
	function refresh() {
		$("#guestbookCaptcha").attr("src", "/captcha.svl?d=" + new Date());
	}
</script>
<script type="text/javascript">
      $(function() {
        $(".leve1").switchTab({
          commonTarget : ".leve2",
          chooseStatus : "0102" //这里放置页面载入时打开菜单的xid数值
        });
      });
      $(document).ready(function(){
        $(".channel_list .list_ul li .spc1").removeClass("spc1");
        $(".channel_list .list_ul li a").each(function(index,a){
        	  debugger
            if(a.href.indexOf('method=<%=request.getParameter("method")%>') > -1) {
							$(a).parent().parent().prev().click();
							$(a).parent().addClass("spc1");
							return;
						}
				});
       });
</script>