<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.tongge.lnsmessp.entities.UserEntity"%>
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
<%
    String kind = ((UserEntity) request.getSession().getAttribute("CurrentUser")).getKind();
    String method = request.getParameter("method");
%>
<body>
  <div id='container'>
    <div id="topInformation1">
      <jsp:include page="/jsp/base/topInformation.jsp"></jsp:include>
    </div>
    <div id="warp">
      <jsp:include page="/jsp/base/top.jsp" />
      <jsp:include page="/jsp/base/navigator.jsp" />
      <div id='content' style='width: 970px; height: 489px; margin: 0px auto'>
        <div class="content content2">
          <div class="left" style="width: 650px;">
            <%
                if ("center".equals(method)) {
            %>
            <jsp:include page="main/detail.jsp"></jsp:include>
            <%
                } else if ("toUpdPwd".equals(method)) {
            %>
            <jsp:include page="main/updPwd.jsp"></jsp:include>
            <%
                } else if ("compnay".equals(kind)) {
                    if ("toBusiApply".equals(method)) {
            %>
            <jsp:include page="main/compnay/busi_apply.jsp"></jsp:include>
            <%
                } else if ("compnayBusiQuery".equals(method)) {
            %>
            <jsp:include page="main/compnay/busi_query.jsp"></jsp:include>
            <%
                } else if ("reommendedList".equals(method)) {
            %>
            <jsp:include page="main/compnay/reommendedList.jsp"></jsp:include>
            <%
                } else if ("forEnterInfo".equals(method)) {
            %>
            <jsp:include page="main/compnay/forEnterInfo.jsp"></jsp:include>
            <%
                } else if ("infolist".equals(method)) {
            %>
            <jsp:include page="main/compnay/infolist.jsp"></jsp:include>
            <%
                } else if ("toUpdAccount".equals(method)) {
            %>
            <jsp:include page="main/compnay/compnay.jsp"></jsp:include>
            <%
                }
                } else if ("services".equals(kind)) {
                    if ("servicesSelect".equals(method)) {
            %>
            <jsp:include page="main/services/servicesSelect.jsp"></jsp:include>
            <%
                } else if ("servicesStatusChange".equals(method)) {
            %>
            <jsp:include page="main/services/servicesStatusChange.jsp"></jsp:include>
            <%
                } else if ("toProvideServcies".equals(method)) {
            %>
            <jsp:include page="main/services/provideServices.jsp"></jsp:include>
            <%
                } else if ("forProvideServiceInfo".equals(method)) {
            %>
            <jsp:include page="main/services/forProvideServices.jsp"></jsp:include>
            <%
                } else if ("toUpdAccount".equals(method)) {
            %>
            <jsp:include page="main/services/services.jsp"></jsp:include>
            <%
                }
                } else if ("person".equals(kind)) {
                    if ("compnayacceptlist".equals(method)) {
            %>
            <jsp:include page="main/person/compnayacceptlist.jsp"></jsp:include>
            <%
                } else if ("servicesSelect".equals(method)) {
            %>
            <jsp:include page="main/services/servicesSelect.jsp"></jsp:include>
            <%
                } else if ("toAllotCompnayAccepct".equals(method)) {
            %>
            <jsp:include page="main/person/allotCompnayAccepct.jsp"></jsp:include>
            <%
                }
                }
            %>
            <div class="clear" style="height: 20px"></div>
          </div>
          <div class="right">
            <div class="clear" style="height: 68px;"></div>
            <%
                if ("compnay".equals(kind)) {
            %>
            <jsp:include page="right/compnay.jsp"></jsp:include>
            <%
                } else if ("person".equals(kind)) {
            %>
            <jsp:include page="right/person.jsp"></jsp:include>
            <%
                } else if ("services".equals(kind)) {
            %>
            <jsp:include page="right/services.jsp"></jsp:include>
            <%
                }
            %>
            <div class="clear"></div>
          </div>
        </div>
      </div>
      <div id='bottom' style='width: 970px; height: 127px; background: none transparent scroll repeat 0% 0%'>
        <jsp:include page="/jsp/base/bottom.jsp" />
      </div>
    </div>
  </div>
</body>
</html>
