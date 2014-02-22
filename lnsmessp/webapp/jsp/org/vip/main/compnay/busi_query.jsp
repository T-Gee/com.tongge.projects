<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.tongge.lnsmessp.entities.BusiapplyEntity"%>
<script type="text/javascript" src="<%=path%>/scripts/switch.js"></script>
<div class="clear"></div>
<div class="current">
  您的位置：
  <a href="http://www.bdasme.org/">首页</a>
  &gt; 企业会员中心--业务办理--查询服务
</div>
<div class="clear" style="height: 20px;"></div>
<div class="current2"></div>
<div class="clear" style="height: 20px;"></div>
<div class="search_blank">
  <form action="<%=path%>/VIP.do?method=compnayBusiQuery" method="post" style="display: inline">
    <center>
      业务类型：&nbsp; <select name="title">
        <option selected="selected" value="">请选择类型</option>
        <option value="政策服务">政策服务</option>
        <option value="金融服务">金融服务</option>
        <option value="科技服务">科技服务</option>
        <option value="商务服务">商务服务</option>
        <option value="其他服务">其他服务</option>
      </select>&nbsp;&nbsp;&nbsp;&nbsp; 业务状态：&nbsp; <select name="origin">
        <option selected="selected" value="-1">请选择类型</option>
        <option value="0">未分配</option>
        <option value="1">未受理</option>
        <option value="2">已受理</option>
        <option value="3">已完成</option>
        <option value="4">已归档</option>
        <option value="5">已评价</option>
        <option value="10">异常</option>
      </select>&nbsp;&nbsp;&nbsp;&nbsp; 业务号：&nbsp;<input name="author" size="10" type="text">&nbsp;&nbsp;&nbsp;&nbsp; <input
        name="" value="查询" style="width: 80px; height: 24px;" type="submit">
    </center>
  </form>
</div>
<div class="border_line" style="height: 20px;"></div>
<div class="clear" style="height: 50px;"></div>
<!-- <dl class="back_ground"> -->
<!--   <dd> -->
<!--     <a href="http://www.bdasme.org/member/bussinessSelectzc.jspx">政策服务</a> -->
<!--   </dd> -->
<!--   <dd> -->
<!--     <a href="http://www.bdasme.org/member/bussinessSelectjr.jspx">金融服务</a> -->
<!--   </dd> -->
<!--   <dd> -->
<!--     <a href="http://www.bdasme.org/member/bussinessSelectkj.jspx">科技服务</a> -->
<!--   </dd> -->
<!--   <dd> -->
<!--     <a href="http://www.bdasme.org/member/bussinessSelectsw.jspx">商务服务</a> -->
<!--   </dd> -->
<!--   <dd> -->
<!--     <a href="http://www.bdasme.org/member/bussinessSelectqt.jspx">其他服务</a> -->
<!--   </dd> -->
<!-- </dl> -->
<!-- <div class="clear"></div> -->
<!-- <div class="border_line" style="height: 10px;"></div> -->
<!-- <div class="clear" style="height: 10px;"></div> -->
<div class="text_title">金融服务列表</div>
<!-----form--->
<form action="bussinessSelectjr.jspx" id="tableForm" method="get">
  <table style="color: #000; margin-left: 20px;" border="1" bordercolor="#a1c0f1" cellpadding="0" cellspacing="0"
    width="630">
    <tbody>
      <tr>
        <td align="center" height="39"><strong>业务号</strong></td>
        <td align="center"><strong>业务类型</strong></td>
        <td align="center"><strong>服务机构</strong></td>
        <td align="center"><strong>时间</strong></td>
        <td align="center"><strong>进度</strong></td>
        <td align="center"><strong>是否评价</strong></td>
      </tr>
      <%
          List entities = (List) request.getAttribute("entities");
          for (int i = 0; i < entities.size(); i++) {
              BusiapplyEntity entity = (BusiapplyEntity) entities.get(i);
      %>
      <tr>
        <td align="center"><strong><%=entity.getBusicode()%></strong></td>
        <td align="center"><strong><%=entity.getTitle()%></strong></td>
        <td align="center"><strong><%=entity.getShortTitle()%> </strong></td>
        <td align="center"><strong><%=entity.getLastupddate()%></strong></td>
        <td align="center"><strong><%=entity.getProccess()%></strong></td>
        <td align="center"><strong><%=entity.getIsValuing()%></strong></td>
      </tr>
      <%
          }
      %>
    </tbody>
  </table>
  <div style="height: 10px;"></div>
  <!--   <table style="color: #000; margin-left: 10px;" border="0" cellpadding="0" cellspacing="0" width="100%"> -->
  <!--     <tbody> -->
  <!--       <tr> -->
  <!--         <td class="pn-sp" align="center">共 0 条&nbsp; 每页 20 条&nbsp; <input value="首 页" onclick="_gotoPage('1');" -->
  <!--           disabled="disabled" type="button"> <input value="上一页" onclick="_gotoPage('1');" disabled="disabled" -->
  <!--           type="button"> <input value="下一页" onclick="_gotoPage('1');" disabled="disabled" type="button"> -->
  <!--           <input value="尾 页" onclick="_gotoPage('1');" disabled="disabled" type="button">&nbsp; 当前 1/1 页 -->
  <!--           &nbsp;转到第<input id="_goPs" style="width: 50px" onfocus="this.select();" -->
  <!--           onkeypress="if(event.keyCode==13){$('#_goPage').click();return false;}" type="text">页 <input -->
  <!--           id="_goPage" value="转" onclick="_gotoPage($('#_goPs').val());" disabled="disabled" type="button"> <input -->
  <!--           name="pageNo" type="hidden"> -->
  <!--         </td> -->
  <!--       </tr> -->
  <!--     </tbody> -->
  <!--   </table> -->
</form>