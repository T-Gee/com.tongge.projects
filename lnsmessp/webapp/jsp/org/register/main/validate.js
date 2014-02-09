function refresh() {
	$("#guestbookCaptcha").attr("src", "/captcha.svl?d=" + new Date());
}
$(function() {
	$("#jvForm").validate({
		rules : {
			password : {
				required : true,
				minlength : 6
			},
			confirm_password : {
				required : true,
				minlength : 6,
				equalTo : "#password"
			},
			shortTitle : {
				maxlength : 50
			},
			title : {
				maxlength : 100
			},
			author : {
				maxlength : 80
			},
			origin : {
				maxlength : 80
			},
			attr_specialService : {
				maxlength : 125
			},
			attr_regCompany : {
				maxlength : 125
			},
			attr_officeCompany : {
				maxlength : 125
			},
			attr_companyNumber : {
				maxlength : 125
			}
		},
		messages : {
			password : {
				required : "请输入密码",
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

function ismoney(obj) {
	if (!isNaN(Number(obj.value))) {
		return true;
	} else {
		// $(obj).append("<font>请输入正确的金额！</font>");
		alert("请输入正确的金额！");
	}

	return;
}