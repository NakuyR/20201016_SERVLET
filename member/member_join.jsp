<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<title>회원 가입</title>
</head>
<body>
	<jsp:include page="../top_menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                회원 가입
            </h1>
        </div>
    </div>
    <div class="container">
        <form name="member" action="../member/member_join_process.jsp" class="form-horizontal" method="post">
            <div class="form-group row">
                <label class="col-sm-2">아이디</label>
                <div class="col-sm-3">
                    <input type="text" name="id" id="id" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">패스워드</label>
                <div class="col-sm-3">
                    <input type="text" name="password" id="password" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">이름</label>
                <div class="col-sm-3">
                    <input type="text" name="name" id="name" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">성별</label>
                <div class="col-sm-3">
                    <input type="radio" id="man" name="gender" value="남자" checked>
                    <label for="man">남자</label>
                    <input type="radio" id="woman" name="gender" value="여자">
                    <label for="woman">여자</label>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">생년월일</label>
                <div class="col-sm-3">
                    <input type="date" name="birth" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">메일주소</label>
                <div class="col-sm-3">
                    <input type="email" name="mail" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">전화번호</label>
                <div class="col-sm-3">
                    <input type="text" name="phone" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2">주소</label>
                <div class="col-sm-3">
                    <input type="text" name="address" id="address" class="form-control">
                </div>
            </div>
            <div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
                    <button type="submit" class="btn btn-primary" onclick="document.member.submit()">가입</button>
                    <a href="../login/login_user.jsp" class="btn btn-sm btn-success pull-right">로그인 페이지</a>
				</div>
			</div>
        </form>
    </div>
</body>
</html>