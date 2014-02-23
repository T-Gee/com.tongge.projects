<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<div class="right_service1">



  <div class="right_topbar">服务机构展示</div>
  <div class="scroll_top_style3" style="width: 280px; height: 330px; overflow: hidden;">
    <div class="scroll_inner_all">
      <div class="scroll_warpInner_5">
        <ul>
          <div id="x"></div>
        </ul>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
<!--//-->
	$.get('<%=path%>/orgservices.do?method=showdoms&date='+ new Date(),null, function(data, textStatus) {
		  var d = document.getElementById("x");
		  d.innerHTML = data;
	});
	$(function() {
		scrolltops3();
		stopAction3();
	});
	var q = 1;
	var scrolltops3 = function() {
		var heightq = parseInt($(".scroll_warpInner_5").height());
		var topsq = parseInt($(".scroll_top_style3").scrollTop());
		if (topsq <= heightq) {
			q++;
			$(".scroll_top_style3").scrollTop(q);
		} else {
			q = 1;
			$(".scroll_top_style3").scrollTop(q);
		}

	}
	var mayyerss3 = setInterval(scrolltops3, 50);
	var stopAction3 = function() {
		$(".scroll_top_style3").hover(function() {
			clearInterval(mayyerss3);
		}, function() {
			mayyerss3 = setInterval(scrolltops3, 50);
		});
	}

</script>