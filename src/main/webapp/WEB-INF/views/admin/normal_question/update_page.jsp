<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="uri" value="${pageContext.request.contextPath}" />
    
    <script type="text/javascript">
    var uri='${uri}';
        </script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>修改-常见问题</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/layui/css/layui.css">
            
            <style type="text/css">
            
            .loadingModel {
                position: absolute;
                top: 0;
                left: 0;
                display: none;
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
            </head>
            <div id="loadingDiv"></div>
            <div id="imgModal"></div>
            <div class="layui-container" style="overflow:hidden;min-height:850px">
            <div class="layui-row">
            <div class="layui-col-lg12">
            <fieldset class="layui-elem-field">
            <legend>修改-常见问题</legend>
            <div class="layui-field-box">
            <div >
            
            
            <div class="layui-form-item layui-form-text" id="questionTitleParentContent">
            <label class="layui-form-label">问题标题</label>
            <div class="layui-input-block">
            <input type="text"  style="display:inline;width:500px;" value="${data.questionTitle}" placeholder="请输入问题标题" id="questionTitle" class="layui-input">	<span style="color:red">*必填</span>
                
                </div>
                </div>
                
                <div class="layui-form-item layui-form-text" id="questionIntroParentContent">
                <label class="layui-form-label">问题描述</label>
                <div class="layui-input-block">
                <textarea  placeholder="请输入问题描述"  id="questionIntro"  rows="15" cols="100">${data.questionIntro}</textarea>	<span style="color:red">*必填</span>
                    
                    </div>
                    </div>
                    
                    <div class="layui-form-item">
                    <div class="layui-input-block">
                    <button class="layui-btn" onclick="submitData();" >立即提交</button>
                    <button  class="layui-btn layui-btn-primary"  onclick="javascript:history.back(-1);" >返回</button>
                    </div>
                    </div>
                    <div style="height:200px"></div>
                    </div>
                    </div>
                    </fieldset>
                    </div>
                    </div>
                    </div>
                    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/jquery-1.11.1.min.js"></script>
                        
                        
                        
                        
                        
                        <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/layui/layui.js"></script>
                            <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/utils/listutils.js?v=3128"></script>
                                
                                
                                
                                <script type="text/javascript">
                                
                                
                                
                                $(function(){
                                    
                                    
                                    
                                })
                                
                                
                                
                                function submitData(){
                                    var questionTitle= $('#questionTitle').val();
                                    var questionIntro= $('#questionIntro').val();
                                    
                                    $.ajax({
                                        type: 'post',
                                        url: '${pageContext.request.contextPath}/admin/normal_question/update_submit',
                                            data:{
                                                "id":'${data.id}',
                                                    
                                                    "questionTitle":questionTitle,
                                                    "questionIntro":questionIntro
                                                },
                                                success: function(result) {
                                                    if(result.code == 0){
                                                        alert(result.msg);
                                                        }else{
                                                            alert(result.msg);
                                                            self.location=document.referrer;
                                                        }
                                                    }
                                                });
                                            }
                                            
                                            
                                            
                                            </script>
                                            </body>
                                            </html>
