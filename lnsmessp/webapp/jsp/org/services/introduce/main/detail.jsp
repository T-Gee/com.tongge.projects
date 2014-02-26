<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@include file="/jsp/base/constant.jsp"%>
<div class="introduce">
  <div class="current">
    您的位置：
    <a href="<%=path%>">首页</a>
    &gt;
    <a href="#">服务机构</a>
  </div>
  <div class="clear" style="height: 30px;"></div>
  <div class="logo_gongsi">
    <h3><%=request.getParameter("title")%></h3>
    <!--           <div class="clear" style="height:30px;"></div> -->

  </div>
  <div class="intuoduce_list">机构介绍</div>
  <div class="lineBorder"></div>
  <div class="picture_introduce">
    <p>${entity.introduce }
  </div>

</div>
<!-- Product_catalog{ -->
<!-- }Product_catalog -->
<div class="clear" style="height: 20px;"></div>
<center>
  <!--   <a href="<%=path%>/member/compnayacceptlist.jspx"> -->
  <!--     <img -->
  <!--       src="%E5%8C%97%E4%BA%AC%E6%B3%B0%E7%91%9E%E7%89%B9%E8%AE%A4%E8%AF%81%E4%B8%AD%E5%BF%83-%E7%A7%91%E6%8A%80%E6%9C%BA%E6%9E%84%E4%BF%A1%E6%81%AF%E5%8F%91%E5%B8%83-%E5%8C%97%E4%BA%AC%E4%BA%A6%E5%BA%84%E4%B8%AD%E5%B0%8F%E4%BC%81%E4%B8%9A%E6%9C%8D%E5%8A%A1%E5%B9%B3%E5%8F%B0_files/x_47.png" -->
  <!--       height="72" width="176"> -->
  <!--   </a> -->
</center>
