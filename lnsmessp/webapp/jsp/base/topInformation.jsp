<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.*"%>
<%@ page import="com.tongge.lnsmessp.entities.UserEntity"%>
<%@include file="constant.jsp"%>
<dl class="topInformation">
  <dd class="left">
    <%
        UserEntity currentuser = (UserEntity) request.getSession().getAttribute("CurrentUser");
    %>
    您好，
    <%
        if (currentuser == null) {
    %>
    <strong style="color: red">游客 </strong> 欢迎观临中小企业服务平台！
    <%
        } else {
            String kind = currentuser.getKind();
    %>
    <a href="<%=path %>/VIP.do?method=center&kind=<%=kind%>">
      <strong style="color: red">${CurrentUser.username }</strong>

      <%
          if ("person".equals(kind)) {
      %>
      普通用户
      <%
          } else if ("services".equals(kind)) {
      %>
      服务机构用户
      <%
          } else if ("compnay".equals(kind)) {
      %>
      企业用户
      <%
          }
      %>
    </a>
    使用中小企业服务平台
    <%
        }
    %>


    <%
        if (currentuser == null) {
    %>
    <a href="<%=path%>/jsp/org/login/index.jsp?op=login" class="tra2" style="font-weight: bold;">登录</a>
    |
    <a href="<%=path%>/jsp/org/register/index.jsp?kind=compnay" class="tra1" style="font-weight: bold;">企业注册</a>
    |
    <a href="<%=path%>/jsp/org/register/index.jsp?kind=services" class="tra1" style="font-weight: bold;">服务机构注册</a>
    |
    <a href="<%=path%>/jsp/org/register/index.jsp?kind=person" class="tra1" style="font-weight: bold;">个人注册</a>
    <%
        } else {
    %>
    <a href="<%=path%>/login.do?op=logout" class="tra2" style="font-weight: bold;">登出</a>
    <%
        }
    %>

  </dd>
  <dd class="right">
    <iframe src="http://m.weather.com.cn/m/pn3/weather.htm" width="225" height="20" marginwidth="0" marginheight="0"
      hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe>
  </dd>
</dl>
