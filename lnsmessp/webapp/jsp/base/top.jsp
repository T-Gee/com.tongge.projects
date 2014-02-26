<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--对联-->
<%@include file="constant.jsp"%>
<div id="top" style="display: ''">
  <div id="adv" style="position: absolute; top: 160px; right: 20px; width: 100px; height: 0px;">
    <!--<div style="position:relative">
          <a href="<%=path%>/jchdzxhd/3362.jhtml" target="_blank"><img src="/r/cms/www/red/img/xmhy.jpg" /></a>
          <a  href="javascript:void(0)" onclick = "document.getElementById('adv').style.display='none';" style="width:20px; height:21px; float:right; position:absolute;top:0; right:0">
            <img src="/r/cms/www/red/img/xmhy_02.jpg" />
          </a> 
        </div>-->
  </div>
  <script type="text/javascript">
     $(function(){
var s= $('#adv').position().top;
var t=0;
$(window).scroll(function (){ 
  if($(window).scrollTop()>215)
  {
  $("#adv").animate({top : $(window).scrollTop() - t  + "px" },{queue:false,duration:400});
  }else{
  $("#adv").animate({top : $(window).scrollTop() + s + "px" },{queue:false,duration:400});
  }

});
})
</script>
  <!--对联结束-->
  <!--end topInformation -->
  <div class="clear"></div>
  <!--head -->
  <div class="head">
    <div class="search">
      <form action="<%=path%>/search.jspx" target="_blank" style="display: inline">
<!--         <input name="q" value="网站内容查询，请输入关键词" type="text" id="txtKey" -->
<!--           onfocus="if(this.value==&#39;网站内容查询，请输入关键词&#39;)this.value=&#39;&#39;" -->
<!--           onblur="if(this.value==&#39;&#39;)this.value=&#39;网站内容查询，请输入关键词&#39;" maxlength="50" autocomplete="off" -->
<!--           class="textArea" onkeyup="value=value.replace(/[^\d\a-zA-Z\u4E00-\u9FA5]/g,&#39;&#39;)" -->
<!--           onbeforepaste="clipboardData.setData(&#39;text&#39;,clipboardData.getData(&#39;text&#39;).replace(/[^\d\a-zA-Z\u4E00-\u9FA5]/g,&#39;&#39;))"> -->
<!--         <input type="submit" id="btnSearch" class="searchSubmit" value=""> -->
      </form>
    </div>
  </div>

  <!--end head -->
</div>