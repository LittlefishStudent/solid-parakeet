<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="order by yuwencheng/" />
<title>${setting.sysTitle}</title>
<meta name="description" content="${setting.sysIntro}" />
<meta name="keywords" content="${setting.sysIntro}" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_portal_view.css" />
<script src="${pageContext.request.contextPath}/static/index/style/js/common.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/jquery-1.7.2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/pace.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/static/index/style/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body id="nv_portal" class="pg_view">
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div id="toptb" class="cl" style="display:none;"> </div>
<div id="hd" style="background:#FFF; height:60px; border-bottom:1px solid #E6E6E6; ">
  <div class="clear"></div>
  <div id="week_nav">
    <div class="wk_navwp">
      <div class="wk_lonav">
        <div class="wk_logo">
          <h2><a href="${pageContext.request.contextPath}/" title=""><img src="${pageContext.request.contextPath}/static/index/style/images/logo.png" alt="" border="0" /></a></h2>
        </div>
        <div class="wk_inav">
          <ul class="nav">
            <li><a href="${pageContext.request.contextPath}/" >网站首页</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/about" >关于我们</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/news" style="color:#90C42F" >新闻资讯</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/product" >项目案例</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/question" >常见问题</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/contact" >联系我们</a></li>
            
          </ul>
        </div>
      </div>
      
    </div>
  </div>
</div>

<div id="mu" class="cl">
  <div class="wp"> </div>
</div>
<script src="${pageContext.request.contextPath}/static/index/style/js/week_nav.js" type="text/javascript"></script>
<div id="wp" class="wp"> 
  
<script src="${pageContext.request.contextPath}/static/index/style/js/forum_viewthread.js" type="text/javascript"></script> 
<script type="text/javascript">zoomstatus = parseInt(1), imagemaxwidth = '600', aimgcount = new Array();</script>

<style>

.ct2 { border:0; padding-bottom:30px;} 

.vw .d img { max-width:1160px; }

.ie6 .vw .d img { width: expression(this.width > 1160 ? 1160:true); }

</style>
  
</div>
<div class="wk_news_box">
  <div class="wk_portalhead_bg">
    <ul>
       <c:forEach var="item" items="${nl}">
              <c:if test="${type==item.id}">
              <li ><a href="${pageContext.request.contextPath}/commonapi/news?type=${item.id}" style="color:#90C42F" title="${item.typeName}" >${item.typeName}</a></li>
            </c:if>
             <c:if test="${type!=item.id}">
              <li ><a href="${pageContext.request.contextPath}/commonapi/news?type=${item.id}" title="${item.typeName}" >${item.typeName}</a></li>
            </c:if>
            </c:forEach>
      
    </ul>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
  <h1 class="ph">${news.title}</h1>
  <p class="xg1">${news.publishDate}<span class="pipe">|</span> 发布者: ${news.publishName}<span class="pipe">|</span> 查看: <em id="_viewnum">${news.viewNum}</em><span class="pipe">|</span> </p>
</div>
<div class="clear"></div>
<div class="wk_ymbg">
  <div id="wp" class="wp">
    <div class="wp"> 
      
      <!--[diy=diy1]-->
      <div id="diy1" class="area"></div>
      <!--[/diy]--> 
      
    </div>
    <div id="ct" class="ct2 wp cl">
      <div class="clear"></div>
      <div class="bm vw">
        <div class="h hm wk_hm"> </div>
        
        <!--[diy=diysummarytop]-->
        <div id="diysummarytop" class="area"></div>
        <!--[/diy]--> 
        
        <!--[diy=diysummarybottom]-->
        <div id="diysummarybottom" class="area"></div>
        <!--[/diy]-->
        
        <div class="d"> 
          
          <!--[diy=diycontenttop]-->
          <div id="diycontenttop" class="area"></div>
          <!--[/diy]-->
          
          <table cellpadding="0" cellspacing="0" class="vwtb">
            <tr>
              <td id="article_content">
              <div style="text-align: center;">
	<img alt="" src="${news.newsImg}" style="width: 800px; height: 443px;" /></div>
<br />

<div>
${news.content}
</div>

              </td>
            </tr>
          </table>
          
          <!--[diy=diycontentbottom]-->
          <div id="diycontentbottom" class="area"></div>
          <!--[/diy]--> 
          
          <script src="${pageContext.request.contextPath}/static/index/style/js/home.js" type="text/javascript"></script> 
          
          <!--[diy=diycontentclickbottom]-->
          <div id="diycontentclickbottom" class="area"></div>
          <!--[/diy]--> 
          
        </div>
        <div class="clear"></div>
        <div class="week_share">
          <div class="bdsharebuttonbox"><a class="ishare">分享到：</a> <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到： 微信">微信</a> <a href="#" class="bds_sqq" data-cmd="sqq" title="分享到： QQ好友">QQ好友</a> <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到： 新浪微博">新浪微博</a> <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到： QQ空间">QQ空间</a> <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到： 腾讯微博">腾讯微博</a> <a href="#" class="bds_renren" data-cmd="renren" title="分享到： 人人网">人人网</a> </div>
          <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"16"},"share":{"bdSize":16}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script> 
        </div>
        <div class="clear"></div>
      </div>
      
      <!--[diy=diycontentrelatetop]-->
      <div id="diycontentrelatetop" class="area"></div>
      <!--[/diy]--><!--[diy=diycontentrelate]-->
      <div id="diycontentrelate" class="area"></div>
      <!--[/diy]--> 
      
      <!--[diy=diycontentcomment]-->
      <div id="diycontentcomment" class="area"></div>
      <!--[/diy]--> 
      
    </div>
  </div>
  <div class="clear"></div>
  
  <div class="wp mtn"> 
    
    <!--[diy=diy3]-->
    <div id="diy3" class="area"></div>
    <!--[/diy]--> 
    
  </div>
  <input type="hidden" id="portalview" value="1">
</div>

<div id="wk_ft">
  <div class="section fp-auto-height">
    <div class="wk_footer_side">
  <div class="wk_footer"> Copyright ©2020 ${setting.companyName} 版权所有  <a title="baidu" href="#" target="_blank">技术支持：</a> 备案号：<a href="http://www.miitbeian.gov.cn/" target="_blank" title="${setting.beianNo}">${setting.beianNo}</a> <br />
        友情链接：
         <c:forEach var="item" items="${ll}">
      <a href='${item.linkUrl}' target='_blank'>${item.linkName}</a>
      </c:forEach>
        </div>
    </div>
</div>

</div>
</div>
<ul id="scbar_type_menu" class="p_pop" style="display: none;">
</ul>

<link href="${pageContext.request.contextPath}/static/index/style/css/service.css" rel="stylesheet" type="text/css" />
<div class="main-im">
  <div id="open_im" class="open-im"> </div>
  <div class="im_main" id="im_main">
    <div id="close_im" class="close-im"><a href="javascript:void(0);" title="点击关闭"> </a></div>
    <a href="http://wpa.qq.com/msgrd?v=3&uin=${setting.qqVal}&site=qq&menu=yes" target="_blank" class="im-qq qq-a" title="在线QQ客服">
    <div class="qq-container"></div>
    <div class="qq-hover-c"><img class="img-qq" src="${pageContext.request.contextPath}/static/index/style/images/qq.png"></div>
    <span>QQ在线咨询</span> </a>
    <div class="im-tel">
      <dt>售前咨询热线</dt>
      <dt class="tel-num">${setting.sqTel}</dt>
      <dt>售后服务热线</dt>
      <dt class="tel-num">${setting.shTel}</dt>
    </div>
    <div class="im-footer" style="position:relative">
      <div class="weixing-container">
        <div class="weixing-show">
          <div class="weixing-txt">微信扫一扫<br>
            关注我们<br>
            获取更多精彩风格</div>
          <img class="weixing-ma" src="${setting.wetchatImg}">
          <div class="weixing-sanjiao"></div>
          <div class="weixing-sanjiao-big"></div>
        </div>
      </div>
      <div class="go-top"><a href="#" title="返回顶部"></a> </div>
      <div style="clear:both"></div>
    </div>
  </div>
</div>
<script type="text/javascript">

PTM(document).ready(function(){

PTM('#close_im').bind('click',function(){

PTM('#main-im').css("height","0");

PTM('#im_main').hide();

PTM('#open_im').show();

});

PTM('#open_im').bind('click',function(e){

PTM('#main-im').css("height","272");

PTM('#im_main').show();

PTM(this).hide();

});



PTM(".weixing-container").bind('mouseenter',function(){

PTM('.weixing-show').show();

})

PTM(".weixing-container").bind('mouseleave',function(){        

PTM('.weixing-show').hide();

});

});

</script> 
<script src="${pageContext.request.contextPath}/static/index/style/js/home.js" type="text/javascript"></script>
<div id="scrolltop"> <span hidefocus="true"><a title="返回顶部" onclick="window.scrollTo('0','0')" class="scrolltopa" ><b>返回顶部</b></a></span> </div>
<script type="text/javascript">_attachEvent(window, 'scroll', function () { showTopLink(); });checkBlind();</script>
<div id="discuz_tips" style="display:none;"></div>
<script src="${pageContext.request.contextPath}/static/index/style/js/discuz_tips.js" type="text/javascript" charset="UTF-8"></script>
</body>
</html>
