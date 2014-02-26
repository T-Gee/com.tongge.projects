<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@include file="/jsp/base/constant.jsp"%>
<!--left -->
<div class="left">
  <div class="current">
    您的位置：
    <a href="<%=path%>/">首页</a>
    &gt;
    <a href="<%=path%>/policy.do?method=show">政策服务</a>
  </div>
  <div class="lineborder2"></div>
  <!---start list2----->
  <div class="list2">
    <ul>
      <%
          List fileList = (List) request.getAttribute("filelist");
      			if (fileList != null) {
      				for (int i = 0; i < fileList.size(); i++) {
                  String dom = (String)fileList.get(i);
%>
<%=dom %>
<%
      				}
      			}
      %>
    </ul>
  </div>
  <div class="lineborder2"></div>
  <div class="pagebar"></div>
</div>
<script type="text/javascript">
<!--
	-->
</script>