<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="order by yuwencheng/" />
<title>${setting.sysTitle}</title>
<meta name="keywords" content="${setting.sysIntro}" />
<meta name="description" content="${setting.sysIntro}" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/index/style/css/style_2_portal_list.css" />
<script src="${pageContext.request.contextPath}/static/index/style/js/common.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/jquery-1.7.2.js" type="text/javascript"></script>
       <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/index/style/js/pace.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/static/index/style/css/style.css" rel="stylesheet" type="text/css" />

<body id="nv_portal" class="pg_list pg_list_4">
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
            
            <li><a href="${pageContext.request.contextPath}/commonapi/news">新闻资讯</a></li>
            
            <li><a href="${pageContext.request.contextPath}/commonapi/product"  style="color:#90C42F">项目案例</a></li>
            
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
  <style id="diy_style" type="text/css">
</style>
  <style>

.wp { width:1190px; margin:0 auto; } 

</style>
</div>
<div class="wk_list_box wk_list_box17"> </div>
<div class="wk_blog_tab">
  <ul>
     <c:if test="${type==null or type==''}">
              <li><a href="${pageContext.request.contextPath}/commonapi/product" style="color:#90C42F" title="全部" >全部</a></li>
            </c:if>
             <c:if test="${type!=null and type!=''}">
              <li><a href="${pageContext.request.contextPath}/commonapi/product"  title="全部" >全部</a></li>
            </c:if>
     <c:forEach var="item" items="${nl}">
              <c:if test="${type==item.id}">
              <li><a href="${pageContext.request.contextPath}/commonapi/product?type=${item.id}" style="color:#90C42F" title="${item.typeName}" >${item.typeName}</a></li>
            </c:if>
             <c:if test="${type!=item.id}">
              <li ><a href="${pageContext.request.contextPath}/commonapi/product?type=${item.id}" title="${item.typeName}" >${item.typeName}</a></li>
            </c:if>
            </c:forEach>
    
  </ul>
  <div class="clear"></div>
</div>
<div class="clear"></div>
<div class="wk_ymbg">
  <div id="wp" class="wp">
    <div class="wp"> 
      
      <!--[diy=diy1]-->
      <div id="diy1" class="area"></div>
      <!--[/diy]--> 
      
    </div>
    <div class="week-case"> 
      
      <!--[diy=listcontenttop]-->
      <div id="listcontenttop" class="area"></div>
      <!--[/diy]-->
      
      <div class="week-case_con" id="listContent">
        
        
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
      <div class="pagess">
       <div id="list_bar" class="pagination" style="margin-top:20px;"></div>
        </div>
      
      <!--[diy=diycontentbottom]-->
      
      <div id="diycontentbottom" class="area"></div>
      <!--[/diy]--> 
      
    </div>
  </div>
  <div class="wp mtn"> 
    
    <!--[diy=diy3]-->
    <div id="diy3" class="area"></div>
    <!--[/diy]--> 
    
  </div>
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
           <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/common/page/myPagination.css?t=4" />
       <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/page/myPagination.js"></script>
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

ajaxList(1);

});


                                         
                                         function ajaxList(page) {
                                             
                                             
                                                 $.ajax({
                                                     type : 'get',
                                                     url : "${pageContext.request.contextPath}/commonapi/product/search",
                                                         data : {
                                                             "page":page,
                                                             "type":'${type}'
                                                             
                                                         },
                                                         success : function(result) {
                                                             var rows = result.data;//得到数据列
                                                             var total = result.count;//得到数据总数
                                                             lastPage=result.totalPage;
                                                             totalCount=total;
                                                             var html = '';
                                                             for (var i = 0; i < rows.length; i++) {
                                                             
                                                             	
                                                             	
                                                             	html+='<dl>';
                                                             	html+='<dd style="background:url('+rows[i].proImg+') no-repeat center center;background-size:cover"><a href="${pageContext.request.contextPath}/commonapi/product/detail?id='+rows[i].id+'" title="'+rows[i].proName+'" target="_blank"></a></dd>';
                                                             	html+='<dt>';
                                                             	html+=' <h3><a href="${pageContext.request.contextPath}/commonapi/product/detail?id='+rows[i].id+'" title="'+rows[i].proName+'" target="_blank">'+rows[i].proName+'</a></h3>';
                                                             	html+='</dt>';
                                                             	html+='</dl>';
                                                             }
                                                              if (rows.length == 0) {
                                                                   html += '<p style="text-align:center;color:gray">暂无数据</p>';
                                                              }
                                                                     $("#listContent").html(html);
                                                                     
                                                                     
                                                                     new myPagination({
                                                                         id: 'list_bar',
                                                                         curPage:page, //初始页码
                                                                         pageTotal: result.totalPage, //总页数
                                                                         pageAmount: 10,  //每页多少条
                                                                         dataTotal: total, //总共多少条数据
                                                                         pageSize: 5, //可选,分页个数
                                                                         showPageTotalFlag:true, //是否显示数据统计
                                                                         showSkipInputFlag:false, //是否支持跳转
                                                                         getPage: function (page) {
                                                                             ajaxList(page);
                                                                         }
                                                                     })
                                                                     
                                                                 }
                                                             });
                                                         }

</script> 
<script src="${pageContext.request.contextPath}/static/index/style/js/home.js" type="text/javascript"></script>
<div id="scrolltop"> <span hidefocus="true"><a title="返回顶部" onclick="window.scrollTo('0','0')" class="scrolltopa" ><b>返回顶部</b></a></span> </div>
<script type="text/javascript">_attachEvent(window, 'scroll', function () { showTopLink(); });checkBlind();</script>
<div id="discuz_tips" style="display:none;"></div>
<script src="${pageContext.request.contextPath}/static/index/style/js/discuz_tips.js" type="text/javascript" charset="UTF-8"></script>
</body>
</html>
