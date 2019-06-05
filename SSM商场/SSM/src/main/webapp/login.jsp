<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	padding: 0;
	margin: 0;
}

.ul-login {
	list-style: none;
}

.ul-login>li>span:nth-child(1) {
	display: inline-block;
	width: 50px;
	text-align: right;
}

.div-submit {
	width: 100%;
	text-align: center;
}

form {
	display: inline-block;
}
</style>
</head>
<body>

	<form action="login">
		<ul class="ul-login">
			<li><span>帐号：</span> <span><input type="text" name="name"></span></li>
			<li><span>密码：</span> <span><input type="password" name="pwd"></span>
			</li>
		</ul>
		<div class="div-submit">
			<input type="submit" value="登录"> <input type="reset"
				value="重置">
		</div>
      <p style="color:red;">${msg }</p>
	</form>

</body>
</html>