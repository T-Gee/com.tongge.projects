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