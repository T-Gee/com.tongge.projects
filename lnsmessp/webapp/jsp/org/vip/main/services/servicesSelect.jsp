<%@page import="com.tongge.lnsmessp.entities.ServiceapplyEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.tongge.lnsmessp.entities.ServiceapplyEntity" %>
<div class="current">您的位置：首页 &gt; 服务机构会员中心-业务办理--业务查询</div>
<div class="clear" style="height: 20px;"></div>
<div class="current2"></div>
<div class="clear" style="height: 20px;"></div>
<div class="search_blank">
  <form action="<%=path %>/VIP.do?method=servicesSelect" method="post" style="display: inline" id="searchform">
    <center>
      业务类型：&nbsp;
      <select name="title" id="seltype">
        <option selected="selected" value="">请选择类型</option>
        <option value="政策服务">政策服务</option>
        <option value="金融服务">金融服务</option>
        <option value="科技服务">科技服务</option>
        <option value="商务服务">商务服务</option>
        <option value="其他服务">其他服务</option>
      </select>
      &nbsp;&nbsp;&nbsp;&nbsp;

      <input name="" value="搜索" style="width: 80px; height: 24px;" type="submit">
    </center>
  </form>
</div>
<!-- <div class="border_line" style="height: 20px;"></div> -->
<!-- <div class="clear" style="height: 50px;"></div> -->
<!-----form--->
<form action="bussinessSelectjr.jspx" id="tableForm" method="get">
  <div class="border_line" style="height: 10px;"></div>
  <div class="clear" style="height: 10px;"></div>
  <div class="text_title">业务查询</div>
  <table style="color: #000; margin-left: 20px;" border="1" bordercolor="#a1c0f1" cellpadding="0" cellspacing="0"
    width="630">
    <tbody>
      <tr>
        <td align="center" height="39"><strong>序号</strong></td>
        <td align="center"><strong>联系人</strong></td>
        <td align="center"><strong>联系电话</strong></td>
        <td align="center"><strong>提供服务类别</strong></td>
        <td align="center"><strong>提交时间</strong></td>
      </tr>
      <%
          List entities = (List) request.getAttribute("entities");
          for (int i = 0; i < entities.size(); i++) {
              ServiceapplyEntity entity = (ServiceapplyEntity) entities.get(i);
      %>
      <tr>
        <td align="center" height="39">
        <strong><%=entity.getCode() %></strong>
        </td>
        <td align="center"><strong><%=entity.getContacts() %></strong></td>
        <td align="center"><strong><%=entity.getContactMobile() %></strong></td>
        <td align="center"><strong><%=entity.getShortTitle() %></strong></td>
        <td align="center"><strong><%=entity.getLastupddate() %></strong></td>
      </tr>
      <%
          }
      %>
    </tbody>
  </table>
  <div style="height: 10px;"></div>
</form>
<div class="clear"></div>
