<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.tongge.lnsmessp.entities.CompnaydetailEntity"%>
<%@ page import="com.tongge.lnsmessp.common.Constant"%>

<script type="text/javascript" src="<%=path%>/scripts/switch.js"></script>
<div class="current">
  您的位置：
  <a href="<%=path%>/">首页</a>
  &gt; 企业会员中心--企业信息发布列表
</div>
<!-- <div class="inquri_search">  
            <form action="centerSearch.jspx" method="post">
              <input type="text" style="height:30px; width:380px; height:20px;color: #858789"   name="searchValue" value="" />
              <input type="submit" name=""  value="搜索" style="width:70px; height:25px;" />
            </form>
      </div>-->
<!-----form--->
<form action="forEnterInfoList.jspx" id="tableForm" method="get">
  <div class="tableContent_tab2" id="11" style="margin: 20px 40px;">
    <table border="1" bordercolor="#858789" cellpadding="1" cellspacing="0" width="547">
      <tbody>
        <tr>
          <td height="30" width="130">公司logo</td>
          <td width="130">机构介绍</td>
          <td width="130">服务介绍</td>
        </tr>
        <%
            List entities = (List) request.getAttribute("entities");
            for (int i = 0; i < entities.size(); i++) {
                CompnaydetailEntity entity = (CompnaydetailEntity) entities.get(i);
        %>
        <tr>
          <td align="center"><img alt="" src="<%=Constant.FILE_SERVER_PATH%>/<%= entity.getImgpath()%>" width="50px" height="70px" /></td>
          <td align="center"><strong><%=entity.getIntroduce()%></strong></td>
          <td align="center"><strong><%=entity.getBusiness()%> </strong></td>
        </tr>
        <%
            }
        %>
      </tbody>
    </table>
    <input name="pageNo" type="hidden">
    <div class="clear" style="height: 20px;"></div>
    <!--     <table style="margin-left: -35px;" border="0" cellpadding="0" cellspacing="0" width="100%"> -->
    <!--       <tbody> -->
    <!--         <tr> -->
    <!--           <td class="pn-sp" align="center">共 1 条&nbsp; 每页 20 条&nbsp; <input value="首 页" onclick="_gotoPage('1');" -->
    <!--               disabled="disabled" type="button"> <input value="上一页" onclick="_gotoPage('1');" -->
    <!--               disabled="disabled" type="button"> <input value="下一页" onclick="_gotoPage('1');" -->
    <!--               disabled="disabled" type="button"> <input value="尾 页" onclick="_gotoPage('1');" -->
    <!--               disabled="disabled" type="button">&nbsp; 当前 1/1 页 &nbsp;转到第<input id="_goPs" style="width: 50px" -->
    <!--               onfocus="this.select();" onkeypress="if(event.keyCode==13){$('#_goPage').click();return false;}" -->
    <!--               type="text">页 <input id="_goPage" value="转" onclick="_gotoPage($('#_goPs').val());" -->
    <!--               disabled="disabled" type="button"> -->
    <!--           </td> -->
    <!--         </tr> -->
    <!--       </tbody> -->
    <!--     </table> -->
  </div>

</form>
<!-----end form---->