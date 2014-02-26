<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@include file="/jsp/base/constant.jsp"%>
<!--left -->
<div class="left">
  <div class="current">
    您的位置：
    <a href="<%=path%>/">首页</a>
    &gt;
    <a href="<%=path%>/vip.do?method=show">服务大厅会员中心</a>
     &gt;
    <a href="<%=path%>/vip.do?method=file&id=${file.id}">${file.filename}</a>
  </div>
  <div class="clear" style="height:20px;"></div>
  <div class="current2"></div>
  <div class="clear"></div>
  
  
   <div class="border_img">
            <img src="<%=path %>/images/x_01.png" height="185" width="614">
          </div>
  <div class="lineborder2"></div>
  <div class="pagebar"></div>
</div>
