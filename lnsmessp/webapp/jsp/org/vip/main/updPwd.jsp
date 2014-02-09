<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@include file="/jsp/base/constant.jsp"%>
<!--left -->
<div class="left">
  <div class="clear"></div>
  <div class="current">您的位置：首页 &gt; 企业会员修改密码</div>
  <!----chagne passworld----->
  <div class="clear" style="height: 20px;"></div>
  <div class="current2"></div>
  <div class="change_passworld">
    <div class="change_content">
      <center>
        <h1 style="margin-top: 5px;">
          密码修改<font class="msg">${msg }</font>
        </h1>
      </center>

      <form style="display: inline" id="jvForm" name="jvForm" action="<%=path%>/VIP.do?method=updPwd" method="post">
        <table border="0" cellpadding="0" cellspacing="0" height="120" width="630">
          <tbody>
            <tr height="30">
              <td align="right" width="210">当前密码：</td>
              <td width="320">&nbsp;<input name="origPwd" value="" style="width: 180px; height: 20px;"
                autocomplete="off" vld="{required:true,remote:'checkPwd.jspx',messages:{remote:'原密码不正确'}}"
                class="required" type="password"> <img src="<%=imagePath%>/circle_03.png"
                style="vertical-align: middle;">
              </td>
            </tr>
            <tr height="30">
              <td align="right" width="210">新密码：</td>
              <td width="320">&nbsp;<input name="newPwd" id="newPwd" value="" autocomplete="off"
                style="width: 180px; height: 20px;" class="required" type="password"> <img
                src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
              </td>
            </tr>
            <tr height="30">
              <td align="right" width="210">再次输入密码：</td>
              <td width="320">&nbsp;<input name="confirm_password" id="confirm_password" value=""
                autocomplete="off" style="width: 180px; height: 20px;" class="required" type="password"> <img
                src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
              </td>
            </tr>
          </tbody>
        </table>
        <center>
          <div class="lineborder_app" style="width: 500px;"></div>
          <input name="" value="修改" style="width: 100px; height: 22px; margin-left: -90px;" type="submit">
        </center>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript">
	function refresh() {
		$("#guestbookCaptcha").attr("src", "/captcha.svl?d=" + new Date());
	}
	$(function() {
		$("#jvForm").validate({
			rules : {
				origPwd : {
					required : true,
					minlength : 6
				},
				newPwd : {
					required : true,
					minlength : 6
				},
				confirm_password : {
					required : true,
					minlength : 6,
					equalTo : "#newPwd"
				}
			},
			messages : {
				origPwd : {
					required : "请输入原始密码",
					minlength : jQuery.format("密码不能小于{0}个字 符")
				},
				newPwd : {
					required : "请输入新密码",
					minlength : jQuery.format("密码不能小于{0}个字 符")
				},
				confirm_password : {
					required : "请输入确认密码",
					minlength : "确认密码不能小于6个字符",
					equalTo : "两次输入密码不一致"
				}
			}
		});

	});
</script>