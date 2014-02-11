<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/jsp/base/constant.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.tongge.lnsmessp.entities.UserEntity"%>
<script type="text/javascript" src="<%=path%>/scripts/switch.js"></script>
<div class="clear"></div>
<div class="current">您的位置：首页>会员中心</div>
<div class="reg_one" style="margin-top: 30px;">
  <script type="text/javascript">
			//上传图片
			function upload(n) {
				var of = $("#uploadFile" + n);
				//检查是否选择了图片
				if (of.val() == "") {
					alert("没有选择图片");
					return;
				}
				//将file移动至上传表单
				$("#fileContent").empty();
				$("#fileContent").append(of);
				//复制一个file放至原处
				$("#ufc" + n).append(of.clone().attr("value", ""));
				//修改属性
				of.attr("id", "");
				of.attr("name", "uploadFile");
				//其他表单
				$("#ufFileName").val($("#fileName" + n).val());
				$("#ufWidth").val($("#zoomWidth" + n).val());
				$("#ufHeight").val($("#zoomHeight" + n).val());
				//先清除
				$("#ufMark").val("");
				$("#ufMark").val($("#mark" + n).val());
				$("#uploadNum").val(n);
				$("#uploadForm").submit();
			}
			//剪裁图片
			function imgCut(n) {
				if ($("#uploadImgPath" + n).val() == "") {
					alert("没有上传图片");
					return;
				}
				var url = "/member/v_image_area_select.jspx?uploadNum=" + n
						+ "&imgSrcPath=" + $("#uploadImgPath" + n).val()
						+ "&zoomWidth=" + $("#zoomWidth" + n).val()
						+ "&zoomHeight=" + $("#zoomHeight" + n).val();
				window
						.open(
								url,
								"imgcut",
								"height=550, width=1000, top=0, left=0, toolbar=no, menubar=no, scrollbars=auto, resizable=yes,location=no, status=no");
			}
			//预览图片
			function previewImg(n) {
				var img = $("#uploadImgPath" + n).val();
				if (img != "") {
					if (img.indexOf("?") == -1) {
						$("#preImg" + n).attr("src",
								img + "?d=" + new Date() * 1);
					} else {
						$("#preImg" + n).attr("src",
								img + "&d=" + new Date() * 1);
					}
					if (!$("#preImg" + n).attr("noResize")) {
						$("#preImg" + n).css("width", "auto");
						$("#preImg" + n).css("height", "auto");
					}
				} else {
					$("#preImg" + n).removeAttr("src");
				}
			}
		</script>
  <form id="uploadForm" action="<%=path%>/fileUpload.do?method=img" method="post" enctype="multipart/form-data"
    target="hiddenIframe" style="display: none; width: 0px; height: 0px;">
    <span id="fileContent"></span>
    <input id="ufWidth" name="zoomWidth" type="hidden" />
    <input id="ufHeight" name="zoomHeight" type="hidden" />
    <input id="ufFileName" name="fileName" type="hidden" />
    <input id="ufMark" name="mark" type="hidden">
    <input id="uploadNum" name="uploadNum" type="hidden">
  </form>
  <iframe name="hiddenIframe" border="0" style="display: none; width: 0px; height: 0px;" frameborder="0"></iframe>
  <form style="display: inline" action="<%=path %>/VIP.do?method=forEnterInfodo" method="post" id="jvForm">
    <input name="channelId" value="399" type="hidden">
    <table border="0" cellpadding="0" cellspacing="0" height="280px" width="644">
      <tbody>
        <tr style="height: 30px;">
          <td align="right" width="135">企业logo：</td>
          <td align="left" width="506">
          <img id="preImg0" style="display: none;" /> 
          <span id="ufc0" style="position: relative"> 
          <input id="uploadImgPath0" readonly="readonly" name="typeImg" size="14" class="required" type="text" /> 
          <img src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;" />
          <input id="liulan" size="10" type="text" name="liulan" /> 
          <input class="member_button" value="浏览..." type="button" />
          <input type="file" onchange="$('#liulan').val(this.value)" size="14" id="uploadFile0" 
          style="height: 24px; opacity: 0; filter: alpha(opacity = 0); position: absolute; right: 5px; top: -5px; *top: 50px; *left: 10; _left: 0px;" />
          </span> <input value="上传" onclick="upload(0);" class="member_button" type="button" />
        </tr>
        <tr style="height: 5px;"></tr>
        <tr style="height: 40px;">
          <td align="right">机构介绍：</td>
          <td>&nbsp;<textarea style="width: 410px; height: 70px;" name="introduce" class="required"></textarea> <img
              src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;"/>
          </td>
        </tr>
        <tr style="height: 5px;"></tr>
        <tr style="height: 190px;" valign="top">
          <td align="right">服务介绍：</td>
          <td>&nbsp;<textarea style="width: 410px; height: 180px;" name="business" class="required"></textarea> <img
              src="<%=imagePath%>/circle_03.png" style="vertical-align: middle;" />
          </td>
        </tr>
      </tbody>
    </table>
    <div class="release_h3">
      <h3>产品目录</h3>
    </div>
    <table style="width: 100%; height: auto;" cellpadding="0" cellspacing="0">
      <tbody>
        <tr id="tr-pictures">
          <td style="padding-left: 20px;" align="right" width="20%">产品列表：</td>
          <td colspan="2" class="pn-fcontent" width="90%">
            <div>
              <input class="add-picture" onclick="addPicLine();" value="增加一张图片" type="button" />
            </div>
            <div id="picBefore" style="clear: both"></div> <textarea id="picTable" style="display: none;">      
<!--             <table id="picTable{0}" style="float: left; margin-left: 10px;"> -->
<!--               <tr> -->
<!--                 <td> -->
<!--                   <div> -->
<!--                     <input type="text" id="uploadImgPath{0}" readonly="readonly" name="picPaths" style="width: 160px" /> -->
<!--                     <a href="javascript:void(0);" onclick="$('#picTable{0}').remove();" class="pn-opt">删除</a> -->
<!--                         </div> -->
<!--                         <div> -->
<!--                           <span id="ufc{0}" style="position: relative"> -->
<!--                             <input type='text' id='uploadFileText{0}' size="10" />   -->
<!--                             <input class="browse" type='button' value='浏览' /> -->
<!--                             <input onchange="$('#uploadFileText{0}').val(this.value)" size="10" type="file" -->
<!--                           id="uploadFile{0}" class="file-button" /> -->
<!--                           </span> -->
<!--                           <input type="button" value="上传" onclick="upload({0});" class="upload-button" /> -->
<!--                         </div> -->
<!--                         <div> -->
<!--                           <textarea style="width: 200px; height: 60px;" name="picDescs" maxlength="255"></textarea> -->
<!--                         </div> -->
<!--                       </td> -->
<!--                       <td> -->
<!--                       <img id="preImg{0}" alt="预览" style="display: none;" /> -->
<!--                   </td> -->
<!--                     </tr> -->
<!--                   </table> -->
                </textarea> <script type="text/javascript">
																	var picIndex = 7;
																	var picTpl = $
																			.format($(
																					"#picTable")
																					.val());
																	function addPicLine() {
																		$(
																				'#picBefore')
																				.before(
																						picTpl(picIndex++));
																	}
																</script>
          </td>
        </tr>
      </tbody>
    </table>
    <div class="release_h3"></div>
    <center>
      <input name="nextUrl" value="forEnterInfo.jspx" type="hidden">
      <input value="提交" class="member_button" type="submit">
      &nbsp;
      <input value="重置" class="member_button" type="reset">
    </center>

  </form>
</div>