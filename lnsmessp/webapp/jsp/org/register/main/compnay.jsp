<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<!--left -->
<div class="left">
  <div class="current">当前位置：企业用户注册</div>
  <div class="content_detail">
    <div class="clear" style="height: 20px;"></div>
    <h3>企业用户注册</h3>
    <div class="reg_one">
      <form style="display: inline" action="<%=path%>/register.do" method="post" name="jvForm" id="jvForm">
        <input type="hidden" name="kind" value="<%=request.getParameter("kind")%>" /> <input id="groupId"
          name="groupId" value="3" type="hidden">
        <table border="0" cellpadding="0" cellspacing="0" height="445" width="644">
          <tbody>
            <tr>
              <td align="right" width="135">企业名（全称）</td>
              <td width="506">&nbsp;<input name="title" maxlength="30" style="width: 280px; height: 16px;"
                class="required" type="text" value="企业名（全称）"> <img src="<%=imagePath%>/circle_03.png"
                style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">用户名</td>
              <td>&nbsp;<input name="username" maxlength="20" style="width: 190px; height: 16px;"
                class="required username" type="text" value="qyyh"> <img src="<%=imagePath%>/circle_03.png"
                style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">密码</td>
              <td>&nbsp;<input name="password" id="password" value="123456" maxlength="19"
                style="width: 190px; height: 16px;" class="required password2" type="password" > <img
                src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">确定密码</td>
              <td>&nbsp;<input name="confirm_password" id="confirm_password" value="123456" class="password2"
                maxlength="19" style="width: 190px; height: 16px;" type="password"> <img
                src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">营业范围:</td>
              <td>&nbsp;<input name="shortTitle" style="width: 280px; height: 16px;" class="required" type="text" value="营业范围" >
                <img src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">所属产业</td>
              <td>&nbsp;<select id="attr_respectiveIndustries" name="respectiveIndustries" class="required">
                  <option value="">--------请选择----------</option>
                  <option selected="selected" value="电子信息产业">电子信息产业</option>
                  <option value="生物医药产业">生物医药产业</option>
                  <option value="装备制造产业">装备制造产业</option>
                  <option value="汽车制造产业">汽车制造产业</option>
                  <option value="新能源和新材料产业">新能源和新材料产业</option>
                  <option value="航空航天产业">航空航天产业</option>
                  <option value="文化创意产业">文化创意产业</option>
                  <option value="生产性服务业">生产性服务业</option>
                  <option value="科技创新服务业">科技创新服务业</option>
                  <option value="都市产业">都市产业</option>
                  <option value="其他产业">其他产业</option>
              </select> <img src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">注册资本金</td>
              <td>&nbsp;<input name="author" style="width: 90px; height: 16px;" maxlength="10" class="required"
                onblur="ismoney(this)" type="text" value="123.23" >&nbsp;万元 <img src="<%=imagePath%>/circle_03.png"
                style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">组织机构代码</td>
              <td>&nbsp;<input name="origin" id="origin" style="width: 280px; height: 16px;" class="required"
                type="text" value="组织机构代码" /> <img src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;">
              </td>
            </tr>
            <tr>
              <td align="right">公司注册地</td>
              <td>&nbsp;<input name="companyAddress" maxlength="15" style="width: 280px; height: 16px;" type="text" value="公司注册地" />
              </td>
            </tr>
            <tr>
              <td align="right">公司办公地</td>
              <td>&nbsp;<input name="officeCompany" maxlength="50" style="width: 280px; height: 16px;" type="text" value="公司办公地" />
              </td>
            </tr>
            <tr>
              <td align="right">公司人数</td>
              <td>&nbsp;<input name="companyNumber" maxlength="10" style="width: 190px; height: 16px;"
                onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"
                type="text" value="10"/> 该项只允许输入数字
              </td>
            </tr>
            <tr>
              <td align="right">公司法人代表</td>
              <td>&nbsp;<input name="companyLeader" style="width: 190px; height: 16px;" type="text" value="公司法人代表" />
              </td>
            </tr>
            <tr>
              <td align="right"></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td align="right"></td>
              <td></td>
            </tr>
          </tbody>
        </table>
        <div class="lineborder"></div>
        <center>
          <input name="" value="保存" style="width: 100px; height: 22px;" type="submit">&nbsp;&nbsp;&nbsp; <input
            name="" value="重置" style="width: 100px; height: 22px;" type="reset">
        </center>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript" src="<%=path%>/jsp/org/register/main/validate.js"></script>