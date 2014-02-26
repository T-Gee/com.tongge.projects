<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<%@ page import="java.util.*"%>
<div class="current">您的位置：首页 &gt; 企业会员中心-服务机构状态变更页</div>
<div class="clear" style="height: 20px;"></div>
<div class="current2"></div>
<div class="clear" style="height: 20px;"></div>
<div class="search_blank" style="margin-left: 5px;">
  <form action="servicesSearch.jspx" method="post" style="display: inline">
    &nbsp;&nbsp; 业务类型：&nbsp;
    <select name="title" id="stpye">
      <option selected="selected" value="">请选择类型</option>
      <option value="政策服务">政策服务</option>
      <option value="金融服务">金融服务</option>
      <option value="科技服务">科技服务</option>
      <option value="商务服务">商务服务</option>
      <option value="其他服务">其他服务</option>
    </select>
    &nbsp;&nbsp; 业务状态：&nbsp;
    <select name="origin" id="org">
      <option selected="selected" value="">请选择类型</option>
      <option value="0">未分配</option>
      <option value="1">未受理</option>
      <option value="2">已受理</option>
      <option value="3">已完成</option>
      <option value="4">已归档</option>
      <option value="10">异常</option>
    </select>
    &nbsp;&nbsp; 业务号：&nbsp;
    <input name="author" size="10" type="text">
    <input name="" value="查询" style="width: 80px; height: 24px;" type="submit">
    <input name="pageNo" type="hidden">
  </form>
</div>
<div class="border_line" style="height: 20px;"></div>
<div class="clear" style="height: 50px;"></div>
<!-----form--->
<form action="servicesStatusChange.jspx" id="tableForm" method="get">
  <div class="clear"></div>
  <div class="border_line" style="height: 10px;"></div>
  <div class="clear" style="height: 10px;"></div>
  <div class="text_title">业务查询</div>
  <table style="color: #000; margin-left: 20px;" border="1" bordercolor="#a1c0f1" cellpadding="0" cellspacing="0"
    width="630">
    <tbody>
      <tr>
        <td align="center" height="39"><strong>业务号</strong></td>
        <td align="center"><strong>业务类型</strong></td>
        <td align="center"><strong>服务机构</strong></td>
        <td align="center"><strong>时间</strong></td>
        <td align="center"><strong>进度</strong></td>
        <td align="center"><strong>操作</strong></td>
      </tr>
      <tr>
        <td align="center" height="47"><a href="<%=path%>/member/getDetailInfo.jspx?id=1842">2012061800001</a></td>
        <td align="center">投融资服务</td>
        <td align="center">工商银行</td>
        <td align="center">2012-06-18 14:41:24</td>
        <td align="center"><b style="color: #008a27">已完成</b></td>
        <td align="center"><a href="<%=path%>/member/contrArchiving.jspx?id=1842&amp;&amp;status=4">合同归档</a></td>
      </tr>
    </tbody>
  </table>
  <div style="height: 10px;"></div>
</form>
