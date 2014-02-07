<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<script type="text/javascript">
function refresh(){
  $("#guestbookCaptcha").attr("src","/captcha.svl?d="+new Date());
}
$(function() {
  $("#jvForm").validate({
          rules: {
       password: {
        required: true,
        minlength: 6
       },
       confirm_password: {
        required: true,
        minlength: 6,
        equalTo: "#password"
        }
      },
         messages: {
       password: {
        required: "请输入密码",
        minlength: jQuery.format("密码不能小于{0}个字 符")
       },
       confirm_password: {
        required: "请输入确认密码",
        minlength: "确认密码不能小于6个字符",
        equalTo: "两次输入密码不一致"
       }
      }
  });

})
</script> 

        <div class="clear"></div>
        <div class="current">当前位置：个人用户注册</div>
        <div class="content_detail">
        <div class="clear" style="height:20px;"></div>
        <div class="choshow" id="003ss">
            <h3 style="border:none;">个人用户注册</h3>
            <div class="lineborder"></div>
            <div class="reg_one">
            <form style="display:inline" action="centerregister.jspx" method="post" name="jvForm" id="jvForm">
             <table border="0" cellpadding="0" cellspacing="0" height="240" width="644">
              <tbody><tr>
              <td align="right" width="135">用户名</td>
              <td width="506">
                &nbsp;<input name="username" style="width:280px; height:16px;" class="required username" type="text">
                <img src="<%=path %>/images/circle_03.png" style="vertical-align:middle;">
              </td>
              </tr>
              <tr>
              <td align="right">密码</td>
              <td>&nbsp;<input name="password" id="password" style="width:190px; height:16px;" class="required" type="password">
                <img src="<%=path %>/images/circle_03.png" style="vertical-align:middle;">
              </td>
              </tr>
              <tr>
              <td align="right">确认密码</td>
              <td>&nbsp;<input name="confirm_password" id="confirm_password" style="width:190px; height:16px;" class="required" type="password">
                <img src="<%=path %>/images/circle_03.png" style="vertical-align:middle;">
              </td>
              </tr>
              <tr>
              <td id="typeImg" class="pn-flabel" align="right" width="133">&nbsp;
<!--               请输入验证码： -->
              </td>
              <td width="507">&nbsp;
<%--               <input class="required" maxlength="8" id="captcha" name="captcha" type="text"><img src="<%=path %>/images/circle_03.png" style="vertical-align:middle;"> --%>
              </td> 
                    </tr>
                    <tr>
                      <td class="tdleft" width="120">&nbsp;</td>
                      <td>
<%--                       <img id="guestbookCaptcha" onclick="this.src='/captcha.svl?d='+new Date()" alt="" src="<%=path %>/images/captcha.jpeg">&nbsp;&nbsp;<a href="javascript:void(0);" onclick="refresh()">看不清楚，换一张</a> --%>
                      </td>
                    </tr>
            </tbody></table>
            <div class="lineborder"></div>
            <center>
               <input name="" value="注册" style="width:100px; height:22px;" type="submit">&nbsp;&nbsp;&nbsp;
               <input name="" value="重置" style="width:100px; height:22px;" type="reset">
            </center>
          </form>
           </div>
           </div>
        </div>
       </div>
