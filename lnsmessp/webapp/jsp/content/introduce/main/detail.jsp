<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@include file="/jsp/base/constant.jsp"%>
<!--left -->
<div class="left">
  <div class="current">
    您的位置：
    <a href="<%=path%>/">首页</a>
    &gt;
    <a href="<%=path%>/introduce.do?method=show">中心介绍</a>
     &gt;
    <a href="<%=path%>/introduce.do?method=file&id=${file.id}">${file.filename}</a>
  </div>
  <div class="clear" style="height:20px;"></div>
  <div class="current2">中心介绍</div>
  <div class="clear"></div>
  
  
   <div class="service_j" style="height:auto;">
    <h3><p style="margin-left:25px; text-indent:0px;">
    中心介绍
    </p></h3>
   <p>  这里是服务中心介绍的详细说明</p>
   </div>
  <div class="lineborder2"></div>
  <div class="pagebar"></div>
</div>
