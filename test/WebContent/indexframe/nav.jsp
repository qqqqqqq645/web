<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#menues">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="index.jsp?CONTENTPAGE=./indexframe/frontpage.jsp"">GGUCK'S</a>
		</div>
		<div class="collapse navbar-collapse" id="menues">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">상품<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">상의</a></li>
						<li><a href="#">하의</a></li>
					</ul></li>
				<li><a href="#">장바구니</a></li>
				<li class="active"><a href="#">고객센터</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><imput type="text" name="id"></li>
				<li><imput type="password" name="pw"></li>
				<!-- <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li> -->
				<li><a data-toggle="modal"  role = "button" id = "login"
						data-target="#loginModal">
						<span class="glyphicon glyphicon-log-in">Login</span></a></li>
					
			</ul>
		</div>
	</div>
</nav>

	 <!-- Login Modal -->
<div class="modal fade" id="loginModal" role="dialog">

	<div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header login-modal-head">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3  class = "login_modal_title "><span class="glyphicon glyphicon-lock"></span> GGUCK'S</h3>
        </div>
        <div class="modal-body login-modal-body" >

          <form role="form" method="post" action="./account/login.jsp">
            <div class="form-group">
              <label for="usrname" class = "login_form"><span class="glyphicon glyphicon-user"></span> 아이디</label>
              <input type="text" class="form-control" id="usrname" placeholder="아이디">
            </div>
            <div class="form-group">
              <label for="psw" class ="login_form"><span class="glyphicon glyphicon-eye-open"></span> 비밀번호</label>
              <input type="text" class="form-control" id="psw" placeholder="비밀번호">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>로그인 유지</label>
            </div>
              <button type="submit" class="btn btn-block loginbtn"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
          <br><br>
          <p class=" cannot-login">아직 회원이 아니십니까? <a href="./index.jsp?CONTENTPAGE=./account/signUpForm.html">회원가입</a></p>
          <p class=" cannot-login">비밀번호가  <a href="#">기억나지 않습니까?</a></p>
        </div>
          <div class="modal-footer">
        </div>
      </div>
     
      
    </div>

</div>
<div>
<br><br><br><br><br><br>
</div>

