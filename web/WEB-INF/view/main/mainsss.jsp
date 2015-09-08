<%@ taglib prefix="s" uri="http://java.sun.com/jstl/core_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: ming
  Date: 2015/6/29
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h2>登陆成功</h2>
<%--<h3>${sessionScope.user.username}</h3>--%>

<script type="text/javascript">
  $(function(){  //生成验证码
    $('#kaptchaImage').click(function () {
      $(this).hide().attr('src', '/code/captcha-image.form?' + Math.floor(Math.random()*100) ).fadeIn(); });
  });

  window.onbeforeunload = function(){
    //关闭窗口时自动退出
    if(event.clientX>360&&event.clientY<0||event.altKey){
      alert(parent.document.location);
    }
  };

  function changeCode() {  //刷新
    $('#kaptchaImage').hide().attr('src', '/code/captcha-image.form?' + Math.floor(Math.random()*100) ).fadeIn();
    event.cancelBubble=true;
  }
</script>

<div class="form-group">
  <label>验证码 </label>
  <input name="j_code" type="text" id="kaptcha" maxlength="4" class="form-control" />
  <br/>
  <img src="/code/captcha-image.form" id="kaptchaImage"  style="margin-bottom: -3px"/>
  <a href="#" onclick="changeCode()">看不清?换一张</a>
</div>

<script src="/js/jquery-2.1.3.min.js"></script>
</body>
</html>
