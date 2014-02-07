<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="constant.jsp"%>
<dl class="topInformation">
  <dd class="left">
    您好, <strong>游客</strong>您好欢迎观临中小企业服务平台，您还没有登录哦！
    <a href="<%=path %>/jsp/org/login/index.jsp?returnUrl=/" class="tra2" style="font-weight: bold;">登录</a>
    |
    <a href="<%=path %>/jsp/org/register/index.jsp?kind=compnay" class="tra1" style="font-weight: bold;">企业注册</a>
    |
    <a href="<%=path %>/jsp/org/register/index.jsp?kind=services" class="tra1" style="font-weight: bold;">服务机构注册</a>
    |
    <a href="<%=path %>/jsp/org/register/index.jsp?kind=person" class="tra1" style="font-weight: bold;">个人注册</a>
  </dd>
  <dd class="right">
    <iframe src="http://m.weather.com.cn/m/pn3/weather.htm" width="225" height="20" marginwidth="0" marginheight="0"
      hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
  </dd>
</dl>
