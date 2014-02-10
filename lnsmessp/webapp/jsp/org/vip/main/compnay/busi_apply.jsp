<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<script type="text/javascript" src="<%=path%>/scripts/switch.js"></script>
<div class="clear"></div>
<div class="current">
  您的位置：
  <a href="http://www.bdasme.org/">首页</a>
  &gt; 会员中心-业务办理--申请服务
</div>
<div class="applica_title" style="margin-bottom: 2px;">申请服务</div>
<div class="clear"></div>
<div class="reg_one reg_one2">
  <form action="<%=path %>/VIP.do?method=busiApply" method="post" id="jvForm" name="jvForm" style="display: inline;">
    <div class="applica_radio">
      <div class="applica_radio1">
        <input checked="checked" onclick="titleChange();" name="title" value="政策服务" xid="b001" type="radio"><b>政策服务</b>
      </div>
      <div class="applica_radio2" id="b001">
        <dl>
          <dd>
            <input checked="checked" class="" style="vertical-align: middle" name="shortTitle" value="政府扶持补助"
              type="checkbox">政府扶持补助
          </dd>
          <dd>
            <input checked="checked" style="vertical-align: middle" name="shortTitle" value="企业奖励" type="checkbox">企业奖励
          </dd>
          <dd>
            <input checked="checked" style="vertical-align: middle" name="shortTitle" value="新能源应用补贴" type="checkbox">新能源应用补贴
          </dd>
          <dd></dd>
          <dd></dd>
        </dl>
      </div>
    </div>
    <div class="clear"></div>

    <div class="applica_radio">
      <div class="applica_radio1">
        <input onclick="titleChange();" name="title" value="金融服务" xid="b004" type="radio"><b>金融服务</b>
      </div>
      <div class="applica_radio2" id="b004" style="display: none;">
        <dl>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="投融资服务" type="checkbox">投融资服务
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="风险投资" type="checkbox">风险投资
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="改制上市" type="checkbox">改制上市
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="担保服务" type="checkbox">担保服务
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="保险服务" type="checkbox">保险服务
          </dd>
        </dl>
      </div>
    </div>
    <div class="applica_radio">
      <div class="applica_radio1">
        <input onclick="titleChange();" name="title" value="科技服务" xid="b002" type="radio"><b>科技服务</b>
      </div>
      <div class="applica_radio2" id="b002" style="display: none;">
        <dl>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="研发外包" type="checkbox">研发外包
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="技术交易" type="checkbox">技术交易
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="知识产权" type="checkbox">知识产权
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="成果转化" type="checkbox">成果转化
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="检验检测" type="checkbox">检验检测
          </dd>
        </dl>
      </div>
    </div>
    <div class="clear"></div>
    <div class="applica_radio">
      <div class="applica_radio1">
        <input onclick="titleChange();" name="title" value="商务服务" xid="b003" type="radio"><b>商务服务</b>
      </div>
      <div class="applica_radio2" id="b003" style="display: none;">
        <dl>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="工商注册" type="checkbox">工商注册
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="法律服务" type="checkbox">法律服务
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="人力资源" type="checkbox">人力资源
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="会计审计" type="checkbox">会计审计
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="房屋租售" type="checkbox">房屋租售
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="资产评估" type="checkbox">资产评估
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="市场调查" type="checkbox">市场调查
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="管理质询" type="checkbox">管理质询
          </dd>
          <dd>
            <input style="vertical-align: middle" name="shortTitle" value="网络信息服务" type="checkbox">网络信息服务
          </dd>
        </dl>

      </div>
    </div>
    <div class="clear"></div>
    <div class="applica_radio">
      <div class="applica_radio1">
        <input onclick="titleChange();" name="title" id="qt" value="其他服务" xid="b005" type="radio"><b>其他服务</b>
      </div>
      <div class="applica_radio2" id="b005" style="display: none;">
        <span style="vertical-align: top; margin-left: 10px; margin-right: 5px; line-height: 20px;">请填写详细信息：</span><input
          name="shortTitle" style="width: 265px; height: 20px;" type="text">
      </div>
    </div>
    <div class="clear" style="height: 40px;"></div>
    <table style="margin-left: 15px;" border="0" cellpadding="0" cellspacing="0" height="280px" width="644">
      <tbody>
        <tr style="height: 40px;">
          <td align="right">企业名称：</td>
          <td>&nbsp;
          ${CurrentUser.title }
          </td>
        </tr>
        <tr style="height: 40px;">
          <td align="right">联系人：</td>
          <td>&nbsp;<input name="contacts" style="width: 265px; height: 20px;" class="required" type="text">
            <img src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
          </td>
        </tr>
        <tr style="height: 40px;">
          <td align="right">联系电话：</td>
          <td>&nbsp;<input name="contactMobile" style="width: 265px; height: 20px;" class="required maxLength[14]"   type="text">
            <img src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
          </td>
        </tr>
        <tr style="height: 150px;" valign="top">
          <td align="right">详细需求：</td>
          <td>&nbsp;<textarea style="width: 410px; height: 145px;" name="description" class="required"></textarea>
            <img src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
          </td>
        </tr>
      </tbody>
    </table>
    <div class="lineborder_app"></div>
    <center>
      <input name="" value="提交" style="width: 100px; height: 22px;" type="submit">&nbsp;&nbsp;&nbsp; <input
        name="" value="重填" style="width: 100px; height: 22px;" type="reset">
    </center>

  </form>
</div>
<script type="text/javascript">
	$(".applica_radio1 input").switchTab({
		commonTarget : ".applica_radio2",
		recallBack : function() {
			var _this = arguments[0];
			var xid = arguments[1];
			$("#" + xid + " input").attr("checked", "checked");

		}
	});
	$("input[name='shortTitle'][type='checkbox']").bind("click", function() {

		var l = $("input[name='shortTitle'][type='checkbox']:checked").length;
		if (l <= 0) {
			alert("至少选择一项!");
			return false;
		}

	});

	$(".applica_radio1 input:lt(4)").bind("click", function() {
		$("input[name='shortTitle'][type='text']").removeClass("required");

	});
	$(".applica_radio1 input:eq(4)").bind("click", function() {
		$("input[name='shortTitle'][type='text']").addClass("required");

	});
	function titleChange() {
		var s = document.getElementsByName("shortTitle");
		for (var i = 0; i < s.length; i++) {
			if ((i + 1) == s.length) {
				document.getElementsByName("shortTitle")[i].value = "";
			} else {
				document.getElementsByName("shortTitle")[i].checked = false;
			}
		}
	}
	$("#jvForm").
	validate();
</script>