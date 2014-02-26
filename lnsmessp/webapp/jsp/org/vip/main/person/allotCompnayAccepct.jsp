<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.tongge.lnsmessp.entities.ServiceapplyEntity"%>
<div class="current">
  您的位置：
  <a href="<%=path%>/">首页</a>
  &gt;金融机构大厅分配
</div>
<form style="display: inline" action="<%=path%>/VIP.do?method=allotCompnayAccepct" method="post" id="jvForm"
  name="jvForm">
  <div class="list4">
    <p>企业名称：${CurrentUser.title}</p>
    <p>业务号：${entity.busicode }</p>
    <p>业务类型：${entity.shortTitle }</p>
    <p>联系人：${entity.contacts }</p>
    <p>联系电话：${entity.contactMobile }</p>
    <p style="height: auto;">详细需求： ${entity.description }</p>
    <div class="clear" style="height: 20px;"></div>
    <h3>推荐服务机构</h3>
    <input name="compnayId" value="${entity.busicode}" type="hidden">
    <select width="100" name="servicesId" id="Ajaxname" class="required" onchange="">
      <option selected="selected" value="">---请选择---</option>
      <%
          List entities = (List) request.getAttribute("entities");
          for (int i = 0; i < entities.size(); i++) {
              ServiceapplyEntity entity = (ServiceapplyEntity) entities.get(i);
      %>
      <option value="<%=entity.getUserid()%>"><%=entity.getTitle()%>(<%=entity.getShortTitle()%>)
      </option>
      <%
          }
      %>
    </select>
    <font style="color: red">* <font class="msg">${msg }</font></font>

  </div>
  <div class="clear" style="height: 20px;"></div>
  <div class="lineborder3"></div>
  <center>
    <input name="" value="分配" type="submit">
    <input name="" value="返回" onclick="history.go(-1);" type="button">
  </center>
</form>