<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>


  <script type="text/javascript" src="<%=path%>/component/myfocus/js/myfocus-2.0.1.min.js"></script>
  <style type="text/css">
#myFocus {
	width: 655px;
	height: 245px;
}
</style>
  <script type="text/javascript">
              //设置
              myFocus.set({
                id : 'myFocus',//ID
                pattern : 'mF_YSlider'//风格 mF_tbhuabao mF_fancy mF_liuzg mF_slide3D mF_classicHB mF_classicHC mF_taobao2010
              });
            </script>
  <div id="myFocus">
    <div class="loading">
      <img src="<%=path%>/component/myfocus/img/loading.gif" alt="请稍候..." />
      <%--           <img src="<%=path%>/images/focus/281457468hcw.jpg" thumb="" alt=""  text=" " /> --%>
    </div>
    <div class="pic">
      <ul>
        <li><a href="#2"><img src="<%=path%>/images/focus/0619134318q7.jpg" thumb="" alt="" text=" " /></a></li>
        <li><a href="#3"><img src="<%=path%>/images/focus/281457468hcw.jpg" thumb="" alt="" text=" " /></a></li>
        <li><a href="#4"><img src="<%=path%>/images/focus/28151112wgiu.jpg" thumb="" alt="" text=" " /></a></li>
      </ul>
    </div>
  </div>
  <div class="clear"></div>
