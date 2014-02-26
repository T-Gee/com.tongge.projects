<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<div class="current">当前位置：服务机构注册</div>
<div class="content_detail">
  <div class="clear" style="height: 20px;"></div>
  <h3>服务机构注册</h3>
  <div class="reg_one">
    <form style="display: inline" action="<%=path%>/register.do" method="post" name="jvForm" id="jvForm">
      <input type="hidden" name="kind" value="<%=request.getParameter("kind")%>" />
      <input id="groupId" name="groupId" value="7" type="hidden">
      <table border="0" cellpadding="0" cellspacing="0" height="445" width="644">
        <tbody>
          <tr>
            <td align="right" width="135">服务机构（全称）</td>
            <td width="506">&nbsp;<input name="title" style="width: 280px; height: 16px;" class="required"
                type="text" value="${CurrentUser.title}"> <img src="<%=imagePath%>/circle_03.png"
                style="vertical-align: middle;">
            </td>
          </tr>
          <tr>
            <td align="right">用户名</td>
            <td>${CurrentUser.username}</td>
          </tr>
          <!--           <tr> -->
          <!--             <td align="right">密码</td> -->
          <!--             <td>&nbsp;<input name="password" id="password" value="123456" style="width: 190px; height: 16px;" -->
          <%--               class="required" type="password" /> <img src="<%=imagePath%>/circle_03.png" --%>
          <!--               style="vertical-align: middle;"/> -->
          <!--             </td> -->
          <!--           </tr> -->
          <!--           <tr> -->
          <!--             <td align="right">确认密码</td> -->
          <!--             <td>&nbsp;<input name="confirm_password" id="confirm_password" value="123456" -->
          <!--               style="width: 190px; height: 16px;" class="required" type="password" /> <img -->
          <%--               src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;" /> --%>
          <!--             </td> -->
          <!--           </tr> -->
          <tr>
            <td align="right">营业范围</td>
            <td>&nbsp;<input name="shortTitle" value="${CurrentUser.shortTitle}" style="width: 190px; height: 16px;"
                class="required" type="text" /> <img src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
            </td>
          </tr>
          <tr>
            <td align="right">特色服务</td>
            <td>&nbsp;<input name="specialService" value="${CurrentUser.specialService}"
                style="width: 190px; height: 16px;" class="required" type="text" /> <img
                src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
            </td>
          </tr>
          <tr>
            <td align="right">注册资本金(万元)</td>
            <td>&nbsp;<input name="author" onblur="ismoney(this)" value="${CurrentUser.author}"
                style="width: 190px; height: 16px;" class="required" type="text"> <img
                src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;" />
            </td>
          </tr>
          <tr>
            <td align="right">组织机构代码</td>
            <td>&nbsp;<input name="origin" style="width: 280px; height: 16px;" type="text" value="${CurrentUser.origin}" />
            </td>
          </tr>
          <tr>
            <td align="right">公司注册地</td>
            <td>&nbsp;<input name="companyAddress" style="width: 280px; height: 16px;" type="text"
                value="${CurrentUser.companyAddress}" />
            </td>
          </tr>
          <tr>
            <td align="right">公司办公地</td>
            <td>&nbsp;<input name="officeCompany" style="width: 280px; height: 16px;" type="text"
                value="${CurrentUser.officeCompany}" />
            </td>
          </tr>
          <tr>
            <td align="right">公司人数</td>
            <td>&nbsp;<input name="companyNumber" maxlength="10" style="width: 190px; height: 16px;"
                onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"
                type="text" value="${CurrentUser.companyNumber}" /> 该项只允许输入数字
            </td>
          </tr>
          <tr>
            <td align="right">服务类型</td>
            <td>&nbsp;<select name="servicesType" class="required" value="${CurrentUser.servicesType}">
                <option value="">----请选择----</option>
                <option value="政策服务">政策服务</option>
                <option value="金融服务">金融服务</option>
                <option value="科技服务">科技服务</option>
                <option value="商务服务">商务服务</option>
                <option value="其他服务">其他服务</option>

              </select> <img src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;" />
            </td>
          </tr>
          <tr>
            <td id="typeImg" class="pn-flabel" align="right" width="133"></td>
            <td width="507">&nbsp;</td>
          </tr>
          <tr>
            <td class="tdleft" width="120"></td>
            <td></td>
          </tr>
        </tbody>
      </table>
      <!----- end upload----->
      <div class="clear"></div>
      <div class="lineborder"></div>
      <center>
        <input name="" value="注册" style="width: 100px; height: 22px;" type="submit">
        &nbsp;&nbsp;&nbsp;
        <input name="" value="重置" style="width: 100px; height: 22px;" type="reset">
      </center>
    </form>
  </div>
</div>
<script type="text/javascript" src="<%=path%>/jsp/org/register/main/validate.js"></script>