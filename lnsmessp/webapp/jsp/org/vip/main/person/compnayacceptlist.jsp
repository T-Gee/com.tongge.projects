<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.tongge.lnsmessp.entities.BusiapplyEntity"%>
<div class="clear"></div>
<div class="current">
  您的位置：
  <a href="http://www.bdasme.org/">首页</a>
  &gt; 企业会员中心-业务办理--业务查询
</div>
<div class="clear" style="height: 20px;"></div>
<div class="current2"></div>
<div class="clear" style="height: 20px;"></div>
<div class="search_blank">
  <form action="centerSearchCompnay.jspx" method="post" style="display: inline">
    <center>
      业务类型：&nbsp;
      <select name="title" id="stpye">
        <option selected="selected" value="其他服务">请选择类型</option>
        <option value="政策服务">政策服务</option>
        <option value="金融服务">金融服务</option>
        <option value="科技服务">科技服务</option>
        <option value="商务服务">商务服务</option>
        <option value="其他服务">其他服务</option>
      </select>
      &nbsp;&nbsp;&nbsp;&nbsp; 业务状态：&nbsp;
      <select name="origin" id="org">
        <option selected="selected" value="">请选择类型</option>
        <option value="0">未分配</option>
        <option value="1">未受理</option>
        <option value="2">已受理</option>
        <option value="3">已完成</option>
        <option value="4">已归档</option>
        <option value="5">已评价</option>
        <option value="10">异常</option>
      </select>
      &nbsp;&nbsp;&nbsp;&nbsp; 业务号：&nbsp;
      <input name="author" size="10" type="text">
      &nbsp;&nbsp;&nbsp;&nbsp;
      <input name="" value="查询" style="width: 80px; height: 24px;" type="submit">
      <input name="shortTitle" value="其他服务" type="hidden">
      <input name="pageNo" type="hidden">
    </center>
  </form>
</div>
<div class="border_line" style="height: 20px;"></div>
<div class="clear" style="height: 50px;"></div>
<!-----form--->
<form action="compnayacceptlist.jspx" id="tableForm" method="post">
  <dl class="back_ground">
    <dd style="margin-left: 280px;">
      <a href="http://www.bdasme.org/member/compnayacceptlist.jspx"> 其他服务 </a>
    </dd>
  </dl>
  <div class="clear"></div>
  <div class="border_line" style="height: 10px;"></div>
  <div class="clear" style="height: 10px;"></div>
  <div class="text_title">业务查询</div>

  <table style="color: #000; margin-left: 20px;" cellpadding="0" cellspacing="0" border="1" bordercolor="#a1c0f1"
    width="630">
    <tbody>
      <tr>
        <td align="center" height="39"><strong>业务号</strong></td>
        <td align="center"><strong>业务类型</strong></td>
        <td align="center"><strong>进度</strong></td>
        <td align="center"><strong>时间</strong></td>
        <td align="center"><strong>操作</strong></td>
      </tr>
      <!--       <tr> -->
      <!--         <td align="center" height="47"><a href="http://www.bdasme.org/member/getDetailInfo.jspx?id=3902">2013091600001</a></td> -->
      <!--         <td align="center">互联网精准营销，互联网推广，互联网客户维护</td> -->
      <!--         <td align="center"><b style="color: #bd0020">未分配</b></td> -->
      <!--         <td align="center">2013-09-16 21:15:04</td> -->
      <!--         <td align="center"><a -->
      <!--             href="http://www.bdasme.org/member/allotCompnayAccepct.jspx?id=3902&amp;&amp;title=%E4%BA%92%E8%81%94%E7%BD%91%E7%B2%BE%E5%87%86%E8%90%A5%E9%94%80%EF%BC%8C%E4%BA%92%E8%81%94%E7%BD%91%E6%8E%A8%E5%B9%BF%EF%BC%8C%E4%BA%92%E8%81%94%E7%BD%91%E5%AE%A2%E6%88%B7%E7%BB%B4%E6%8A%A4">分配</a>&nbsp;&nbsp;</td> -->
      <!--       </tr> -->
      <%
          List entities = (List) request.getAttribute("entities");
          for (int i = 0; i < entities.size(); i++) {
              BusiapplyEntity entity = (BusiapplyEntity) entities.get(i);
      %>
      <tr>
        <td align="center" height="47"><%=entity.getBusicode()%></td>
        <td align="center"><%=entity.getShortTitle()%></td>
        <td align="center"><b style="color: #bd0020"><%=entity.getProccess()%></b></td>
        <td align="center"><%=entity.getLastupddate()%></td>
        <td align="center"><a href="<%=path %>/VIP.do?method=toAllotCompnayAccepct&id=<%=entity.getBusicode()%>&title=<%=entity.getShortTitle()%>">分配</a>&nbsp;&nbsp;</td>
      </tr>
      <%
          }
      %>
    </tbody>
  </table>
  <div style="height: 10px;"></div>
</form>
<!-----end form---->