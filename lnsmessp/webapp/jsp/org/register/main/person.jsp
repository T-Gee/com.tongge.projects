<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<div class="clear"></div>
<div class="current">当前位置：个人用户注册</div>
<div class="content_detail">
  <div class="clear" style="height: 20px;"></div>
  <div class="choshow" id="003ss">
    <h3 style="border: none;">个人用户注册 ${msg }</h3>
    <div class="lineborder"></div>
    <div class="reg_one">
      <form style="display: inline" action="<%=path%>/register.do" method="post" name="jvForm" id="jvForm">
        <input type="hidden" name="kind" value="<%=request.getParameter("kind")%>" />
        <table border="0" cellpadding="0" cellspacing="0" height="240" width="644">
          <tbody>
            <tr>
              <td align="right" width="135">用户名</td>
              <td width="506">&nbsp;<input name="username" style="width: 280px; height: 16px;"
                class="required username" type="text" value="tongge"> <img src="<%=imagePath%>/circle_03.png"
                style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">密码</td>
              <td>&nbsp;<input name="password" id="password" style="width: 190px; height: 16px;" class="required"
                type="password" value="123456"> <img src="<%=imagePath%>/circle_03.png"
                style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">确认密码</td>
              <td>&nbsp;<input name="confirm_password" id="confirm_password" style="width: 190px; height: 16px;"
                class="required" type="password" value="123456"> <img src="<%=imagePath%>/circle_03.png"
                style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td id="typeImg" class="pn-flabel" align="right" width="133">&nbsp; <!--                请输入验证码：  -->
              </td>
              <td width="507">&nbsp; <%--                <input class="required" maxlength="8" id="captcha" name="captcha" type="text"><img src="<%=path %>/images/circle_03.png" style="vertical-align:middle;">  --%>
              </td>
            </tr>
            <tr>
              <td class="tdleft" width="120">&nbsp;</td>
              <td>
                <!--               <img id="guestbookCaptcha" onclick="this.src='/captcha.svl?d='+new Date()" alt="" -->
                <%--                 src="<%=imagePath%>/captcha.jpeg">&nbsp;&nbsp;<a href="javascript:void(0);" onclick="refresh()">看不清楚，换一张</a> --%>
              </td>
            </tr>
          </tbody>
        </table>
        <div class="lineborder"></div>
        <center>
          <input name="" value="注册" style="width: 100px; height: 22px;" type="submit">&nbsp;&nbsp;&nbsp; <input
            name="" value="重置" style="width: 100px; height: 22px;" type="reset">
        </center>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript" src="<%=path%>/jsp/org/register/main/validate.js"></script>
