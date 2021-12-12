<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="uri" value="${pageContext.request.contextPath}" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>新闻</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/layui/css/layui.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/css/global.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/icheck/minimal/red.css">
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/common/page/myPagination.css?t=4" />
                    
                    </head>
                    <body class="layui-layout-body" style="overflow:scroll;">
                    <style type="text/css">
                    .btnStyle{
                        margin-left:8px;
                        margin-top:8px
                    }
                    .loadingModel {
                        position: absolute;
                        top: 0;
                        left: 0;
                        background-color: rgba(9, 9, 9, 0.63);
                        width: 100%;
                        height: 100%;
                        z-index: 1000;
                    }
                    
                    
                    .loading-content {
                        width: 50%;
                        text-align: center;
                        background: #ffffff;
                        border-radius: 6px;
                        line-height: 30px;
                        z-index: 10001;
                    }
                    </style>
                    <div id="loadingDiv"></div>
                    <div id="imgModal"></div>
                    <fieldset class="layui-elem-field">
                    <legend>新闻</legend>
                    <div class="layui-field-box">
                    <div>
                    <div class="layui-form-item" style="text-align:center;">
                    
                    <div class="layui-inline" style="margin-left:100px;">
                    <label>标题</label>
                    </div>
                    <div class="layui-inline">
                    <div class="layui-input-inline" >
                    <input type="text"  style="display:inline;width:250px;"  placeholder="请输入标题进行查询" id="title" class="layui-input">
                    </div>
                    </div>
                    
                    <button type="button" onclick="ajaxList(1);" style="margin-left:50px" class="layui-btn layui-btn-radius" ><i class="layui-icon layui-icon-search"></i>查询</button>
                    
                    </div>
                    </div>
                    
                    <hr>
                    <div class="layui-form-item">
                    
                    <span id="batchUpdateDiv">
                    
                    </span>
                    <span class="l" id="globalBtns">
                    <a href="${pageContext.request.contextPath}/admin/news_info/add" class="layui-btn layui-btn-radius">新增</a>
                        
                        </span>
                        </div>
                        <hr>
                        <table class="layui-table">
                        
                        <thead>
                        <tr  style="text-align:center">
                        <th>标题</th>
                        <th>新闻类型</th>
                        <th>新闻大图</th>
                        <th>发布人</th>
                        <th>发布日期</th>
                        <th>查阅数量</th>
                        <th style="width:200px;">操作</th>
                        
                        </tr>
                        </thead>
                        <tbody id="news_info_body">
                        
                        </tbody>
                        </table>
                        
                        <div id="news_info_bar" class="pagination" style="margin-top:20px;">
                        </div>
                        </div>
                        </fieldset>
                        
                        <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/jquery-1.11.1.min.js"></script>
                            <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/page/myPagination.js"></script>
                                
                                <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/layui/layui.js"></script>
                                    <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/layuiutil.js"></script>
                                        
                                        
                                        
                                        <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/utils/listutils.js?v=3514"></script>
                                            
                                            
                                            
                                            <script type="text/javascript">
                                            
                                            $(function(){
                                                
                                                ajaxList(1);
                                                
                                                
                                            });
                                            
                                            function ajaxList(page) {
                                                var title = $("#title").val();
                                                
                                                
                                                showLoading('${pageContext.request.contextPath}/static/common/loading.gif');
                                                    $.ajax({
                                                        type : 'get',
                                                        url : "${pageContext.request.contextPath}/admin/news_info/queryList",
                                                            data : {
                                                                
                                                                "page":page,
                                                                "title":title
                                                                
                                                            },
                                                            success : function(result) {
                                                                hideLoading();
                                                                var rows = result.list;//得到数据列
                                                                var total = result.count;//得到数据总数
                                                                lastPage=result.totalPage;
                                                                totalCount=total;
                                                                var html = '';
                                                                for (var i = 0; i < rows.length; i++) {
                                                                    html += '<tr>' ;
                                                                    var titleVal=setNullToEmpty(rows[i].newsInfo.title);
                                                                    html+='<td>'+ titleVal+'</td>';
                                                                    var newsTypeIdVal=setNullToEmpty(rows[i].newsTypeIdStr);
                                                                    html+='<td>'+ newsTypeIdVal+'</td>';
                                                                    var newsImgStr = rows[i].newsInfo.newsImg;
                                                                    if(newsImgStr!=null){
                                                                        var newsImgSplit = newsImgStr.split(";");
                                                                        var tmp = '';
                                                                        for(var j=0;j<newsImgSplit.length;j++){
                                                                            if(newsImgSplit[j]!=''){
                                                                                tmp+='<div style="display:inline"><img src="'+newsImgSplit[j]+'" style="width:100px" onclick="maxImg(this)"></div>';
                                                                            }
                                                                        }
                                                                        html+='<td>'+tmp+'</td>';
                                                                        }else{
                                                                            html+='<td></td>';
                                                                        }
                                                                        var publishNameVal=setNullToEmpty(rows[i].newsInfo.publishName);
                                                                        html+='<td>'+ publishNameVal+'</td>';
                                                                        var publishDateVal=setNullToEmpty(rows[i].newsInfo.publishDate);
                                                                        html+='<td>'+ publishDateVal+'</td>';
                                                                        var viewNumVal=setNullToEmpty(rows[i].newsInfo.viewNum);
                                                                        html+='<td>'+ viewNumVal+'</td>';
                                                                        html+='<td>';
                                                                        html+='<a href="${pageContext.request.contextPath}/admin/news_info/detail1?id='+rows[i].newsInfo.id+'" class="layui-btn layui-btn-radius btnStyle">查看详情</a>';
                                                                            html+='<a href="${pageContext.request.contextPath}/admin/news_info/update?id='+rows[i].newsInfo.id+'" class="layui-btn layui-btn-normal layui-btn-radius btnStyle">修改</a>';
                                                                                html+='<a href="javascript:void(0)" onclick="del(this)" data-id="'+rows[i].newsInfo.id+'" class="layui-btn layui-btn-danger layui-btn-radius btnStyle">删除</a>';
                                                                                html+='</td>';
                                                                                html+='</tr>';
                                                                            }
                                                                            if (rows.length == 0) {
                                                                                html += '<tr><td></td><td></td><td></td><td>无数据</td><td></td><td></td><td></td></tr>';
                                                                            }
                                                                            $("#news_info_body").html(html);
                                                                            
                                                                            
                                                                            new myPagination({
                                                                                id: 'news_info_bar',
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
                                                                
                                                                function del(e){
                                                                    if(window.confirm('你确定要删除该新闻吗')){
                                                                        var id = $(e).attr("data-id");
                                                                        $.ajax({
                                                                            type : 'get',
                                                                            url : "${pageContext.request.contextPath}/admin/news_info/del",
                                                                                data : {
                                                                                    "id":id
                                                                                },
                                                                                success : function(result) {
                                                                                    alert(result.msg);
                                                                                    if(result.code==1){
                                                                                        ajaxList(1);
                                                                                    }
                                                                                }
                                                                            });
                                                                            return true;
                                                                            }else{
                                                                                return false;
                                                                            }
                                                                        }
                                                                        
                                                                        
                                                                        function gotoPage(e){
                                                                            
                                                                            var url = $(e).attr("data-url");
                                                                            window.location.href=url;
                                                                        }
                                                                        
                                                                        </script>
                                                                        
                                                                        </body>
                                                                        </html>
