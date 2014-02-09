<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@include file="/jsp/base/constant.jsp"%>
<!--left -->
<div class="left">
  <div class="clear"></div>
  <div class="current">
    您的位置：
    <a href="<%=path%>/">首页</a>
    &gt;
    <a href="<%=path%>/technology.do?method=show">技术</a>
     &gt;
    <a href="<%=path%>/technology.do?method=file&id=${file.id}">${file.filename}</a>
  </div>
  <div class="clear" style="height:20px;"></div>
  <div class="current2">技术</div>
  <div class="clear"></div>
  
  
   <div class="service_j" style="height:auto;">
    <h3><p style="margin-left:25px; text-indent:0px;">${file.filename}</p></h3>
   <p>${file.content }</p>
   </div>
  <div class="lineborder2"></div>
  <div class="pagebar"></div>
</div>
