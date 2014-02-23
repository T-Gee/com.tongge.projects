<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<script type="text/javascript" src="<%=path%>/scripts/switch.js"></script>
<div class="channel_top"></div>
<div class="channel_list">
  <h3>申请服务</h3>
  <div class="clear" style="height: 20px;"></div>
  <ul class="list_ul">
    <li class="leve1" xid="0101"><a href="#">业务办理</a></li>
    <li class="leve2" id="0101">
      <p xid="010101">
        <a href="<%=path%>/VIP.do?method=toBusiApply">企业业务申请</a>
      </p>
      <p xid="010102">
        <a href="<%=path%>/VIP.do?method=compnayBusiQuery">企业业务查询</a>
      </p>
    </li>
    <li class="leve1" xid="0102"><a href="#">服务机构推荐</a></li>
    <li class="leve2" id="0102">
      <p xid="010103">
        <a href="<%=path%>/VIP.do?method=reommendedList&flag=0">政策服务机构</a>
      </p>
      <p xid="010104">
        <a href="<%=path%>/VIP.do?method=reommendedList&flag=1">金融服务机构</a>
      </p>
      <p xid="010105">
        <a href="<%=path%>/VIP.do?method=reommendedList&flag=2">科技服务机构</a>
      </p>
      <p xid="010106">
        <a href="<%=path%>/VIP.do?method=reommendedList&flag=3">商务服务机构</a>
      </p>
      <p xid="010107">
        <a href="<%=path%>/VIP.do?method=reommendedList&flag=4">其他服务机构</a>
      </p>
    </li>
    <li class="leve1" xid="0103"><a href="#">信息管理</a></li>
    <li class="leve2" id="0103">
      <p xid="010108">
        <a href="<%=path%>/VIP.do?method=forEnterInfo">发布企业信息</a>
      </p>
      <p xid="010109">
        <a href="<%=path%>/VIP.do?method=infolist">企业信息列表</a>
      </p>
    </li>
    <li class="leve1" xid="0104"><a href="#">账号管理</a></li>
    <li class="leve2" id="0104">
      <p xid="010110">
        <a href="<%=path%>/VIP.do?method=toUpdPwd&kind=compnay">修改密码</a>
      </p>
      <p xid="010111">
        <a href="<%=path%>/VIP.do?method=toUpdAccount">编辑账号信息</a>
      </p>
      <p xid="010112">
        <a href="<%=path%>/login.do?op=logout">退出登录</a>
      </p>
    </li>
  </ul>
  <div class="clear" style="height: 120px;"></div>
  <script type="text/javascript">
			$(function() {
				$(".leve1").switchTab({
					commonTarget : ".leve2",
					chooseStatus : "0102" //这里放置页面载入时打开菜单的xid数值
				});
			});
			function refresh() {
				$("#guestbookCaptcha").attr("src",
						"/captcha.svl?d=" + new Date());
			}
			$(document).ready(function(){
				$(".channel_list .list_ul li .spc1").removeClass("spc1");
				$(".channel_list .list_ul li.leve2").hide();
				$(".channel_list .list_ul li a").each(function(index,a){
					var flag = <%=request.getParameter("flag")%>;
					if(flag != null && flag != "null"){
  					if(a.href.indexOf('method=<%=request.getParameter("method")%>&flag='+flag) > -1) {
                $(a).parent().parent().prev().click();
                $(a).parent().addClass("spc1");
                return ;
            }
						
					}else{
  					if(a.href.indexOf('method=<%=request.getParameter("method")%>') > -1) {
                $(a).parent().parent().show();
                $(a).parent().addClass("spc1");
                return ;
            }
						
					}

				});
			});
		</script>