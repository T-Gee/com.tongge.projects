<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<script type="text/javascript" src="<%=path%>/scripts/switch.js"></script>
<script type="text/javascript">
	function refresh() {
		$("#guestbookCaptcha").attr("src", "/captcha.svl?d=" + new Date());
	}
	$(function() {
		$("#jvForm").validate();
	});
</script>
<div class="content">
  <div class="login">
    <form style="display: inline" action="<%=path%>/login.do" id="jvForm" name="jvForm" method="post">
      <table align="center" border="0" cellpadding="0" cellspacing="5" width="460">
        <tbody>
          <tr>
            <td align="left" height="30"><input name="returnUrl" value="/" type="hidden"></td>
          </tr>
        </tbody>
      </table>
      <center>
        <h1 style="margin-top: 5px;">会员登录 ${msg}</h1>
      </center>
      <table style="margin-left: 90px;" border="0" cellpadding="0" cellspacing="0" height="150" width="320">
        <tbody>
          <tr>
            <td width="50">用户名：</td>
            <td width="270"><input id="username" name="username" class="login_input1 required username" type="text" 
            value="qyyh"  /></td>
          </tr>
          <tr>
            <td>密&nbsp;&nbsp;码：</td>
            <td><input id="password" name="password" class="login_input2 required" type="password" value="123456"></td>
          </tr>

          <tr>
            <td>&nbsp;</td>
            <td></td>
          </tr>
        </tbody>
      </table>
      <center>
        <input value=" " name=" " class="login_sub" type="submit">

        <div class="clear"></div>
        <p style="height: 35px; line-height: 35px; font-weight: 800; color: #000;">如果您不是会员，请立即注册!</p>
        <a href="<%=path%>/jsp/org/register/index.jsp?kind=compnay">企业用户注册</a>
        <a href="<%=path%>/jsp/org/register/index.jsp?kind=services">机构用户注册</a>
        <a href="<%=path%>/jsp/org/register/index.jsp?kind=person">个人用户注册</a>
      </center>
    </form>
  </div>
</div>
