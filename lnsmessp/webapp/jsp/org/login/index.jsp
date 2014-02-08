<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<%@include file="/jsp/base/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>辽宁中小企业服务平台</title>
<meta content="辽宁,中小企业,服务平台" name="keywords" />
<meta content="辽宁中小企业服务平台" name="description" />
</head>
<body>
  <div id='container'>
    <div id="topInformation1">
      <jsp:include page="/jsp/base/topInformation.jsp"></jsp:include>
    </div>
    <div id="warp">
      <jsp:include page="/jsp/base/top.jsp" />
      <jsp:include page="/jsp/base/navigator.jsp" />
      <div id='content' style='width: 970px; height: 489px; margin: 0px auto'>
        <jsp:include page="/jsp/org/login/login.jsp"></jsp:include>
      </div>
      <div id='bottom' style='width: 970px; height: 127px; background: none transparent scroll repeat 0% 0%'>
        <jsp:include page="/jsp/base/bottom.jsp" />
      </div>
    </div>
  </div>
</body>
</html>