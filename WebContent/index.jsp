<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

System.out.println(request.getParameter("detail_desc"));

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" charset="utf-8" src="js/jquery.min.js"></script>
	 <script type="text/javascript" charset="utf-8" src="js/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="js/ueditor/lang/zh-cn/zh-cn.js"></script>
	
	
    
  </head>
  
  <body>
  
 
  <form action="cmadm/addContent.do">
  
   <fieldset>
   
   <section>
      <label for="contentType">类型：</label>
      <select id="contentType" name="contentType"> 
          <option value="0">资讯</option>
          <option value="1">产品</option>
      </select>
     </section>
     
    <section>
      <label for="contentTitle">文章主题：</label>
      <input type="text" id="contentTitle" name="contentTitle" value"" />
     </section>
     
      <section>
      <label>文章主题图片：</label>
      <input type="text" id="sumImg" name="sumImg" />
       <input  type="button" value="上传图片" onclick="upImage();" />
     </section>
    
    <section>
      <label>链接：</label>
       <input type="text" id="contentLink" name="contentLink" value"" />
     </section>
     
      <section>
      <label for="sumDesc">概述内容：</label>
      <textarea id="sumDesc" name="sumDesc"> </textarea>
     </section>
                                 
   </fieldset>
  <label>文章内容：</label>
    <span  id="detail_area" style="height:auto;">
		<script id="fullContent" name="fullContent" type="text/plain" style="width:654px;height:500px;">
				                                                          
   	  </script>

   </span>
     <input type="submit" value="test" />
     
     
 </form>

<script type="text/plain" id="upload_ue"></script>              
<!--  
 <script type="text/plain" id="myEditor"></script>
调用的页面： 
<input type="text" id="picture" name="cover" /><a href="javascript:void(0);" onclick="upImage();">上传图片</a>
<input type="text" id="file" /><a href="javascript:void(0);" onclick="upFiles();">上传文件</a>
-->
  </body>
  
  
  <script type="text/javascript">
		    //实例化编辑器
		    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		    UE.getEditor('fullContent');
 </script>
 

<script type="text/javascript">
var editor;
var _editor;
$(function() {
     editor = UE.getEditor('myEditor', {
         initialFrameWidth: 800,
         initialFrameHeight: 300,
     });


    //重新实例化一个编辑器，防止在上面的editor编辑器中显示上传的图片或者文件
    _editor = UE.getEditor('upload_ue');
    _editor.ready(function () {
        //设置编辑器不可用
        _editor.setDisabled();
        //隐藏编辑器，因为不会用到这个编辑器实例，所以要隐藏
        _editor.hide();
        //侦听图片上传
        _editor.addListener('beforeInsertImage', function (t, arg) {
            //将地址赋值给相应的input,只去第一张图片的路径
            $("#sumImg").attr("value", arg[0].src);
            //图片预览
            $("#preview").attr("src", arg[0].src);
        })
        //侦听文件上传，取上传文件列表中第一个上传的文件的路径
        _editor.addListener('afterUpfile', function (t, arg) {
            $("#file").attr("value", _editor.options.filePath + arg[0].url);
        })
    });
});    
//弹出图片上传的对话框
function upImage() {
    var myImage = _editor.getDialog("insertimage");
    myImage.open();
}
//弹出文件上传的对话框
function upFiles() {
    var myFiles = _editor.getDialog("attachment");
    myFiles.open();
}
</script>
		    
</html>
