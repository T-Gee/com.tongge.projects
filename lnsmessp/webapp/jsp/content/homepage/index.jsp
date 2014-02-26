<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<div class="content">
  <!--left -->
  <div class="left">
    <div class="current">
      您的位置：
      <a href="<%=path%>/">首页</a>
    </div>
<!--     <div class="lineborder2"></div> -->
    <jsp:include page="left.jsp"></jsp:include>
  </div>
  <div class="right">
    <jsp:include page="right.jsp"></jsp:include>
  </div>
</div>