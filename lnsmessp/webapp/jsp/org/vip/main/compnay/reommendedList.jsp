<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.tongge.lnsmessp.entities.UserEntity"%>
<script type="text/javascript" src="<%=path%>/scripts/switch.js"></script>

<div class="current">
  您的位置：
  <a href="<%=path%>/">首页</a>
  &gt; 企业会员中心-企业服务机构推荐列表
</div>
<div class="clear" style="height: 10px;"></div>
<div class="text_title">服务机构推荐列表</div>
<!--form-->
<form action="reommendedList.jspx" id="tableForm" method="get">
  <table style="color: #000; margin-left: 20px;" border="1" bordercolor="#a1c0f1" cellpadding="0" cellspacing="0"
    width="630">
    <tbody>
      <tr>
        <td align="center" height="39"><strong>机构名称</strong></td>
        <td align="center"><strong>特色服务</strong></td>
        <td align="center"><strong>注册资本金</strong></td>
        <td align="center"><strong>公司办公地</strong></td>
        <td align="center"><strong>服务类型</strong></td>
        <td align="center"><strong>注册时间</strong></td>
      </tr>
      <%
          List entities = (List) request.getAttribute("entities");
          for (int i = 0; i < entities.size(); i++) {
              UserEntity entity = (UserEntity) entities.get(i);
      %>
      <tr>
        <td align="center" height="39"><strong><%=entity.getTitle()%></strong></td>
        <td align="center"><strong><%=entity.getSpecialService()%></strong></td>
        <td align="center"><strong><%=entity.getAuthor()%></strong></td>
        <td align="center"><strong><%=entity.getCompanyAddress()%></strong></td>
        <td align="center"><strong><%=entity.getServicesType()%></strong></td>
        <td align="center"><strong><%=entity.getCreatedate()%></strong></td>
      </tr>
      <%
          }
      %>
    </tbody>
  </table>
  <div style="height: 10px;"></div>
</form>
<!--end form-->
<div class="clear"></div>
