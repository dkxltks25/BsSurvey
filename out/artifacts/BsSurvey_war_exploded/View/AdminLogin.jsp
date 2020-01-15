<%--
  Created by IntelliJ IDEA.
  User: bagjaehong
  Date: 2020/01/14
  Time: 4:54 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class = "DeskTopLogin">
<div class="login__Container">
    <div class="col s12 m6">
        <div class="card">
            <form class="col s12 " method="post">
                <div class="row">
                    <div class="col s12"></div>
                </div>
                <div class="row">
                    <h4>Login</h4>
                    <div class="input-field col s12">
                        <input class="validate invalid" type="text" name="AdminId" id="AdminId" required="">
                        <label for="AdminId" class="">관리자 아이디를 입력해주세요</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 ">
                        <input class="validate invalid" type="password" name="password" id="password" required="">
                        <label for="password" class="">관리자 비밀번호를 입력해주세요</label>
                    </div>
                </div>
                <br>
                <div style="text-align: center;">
                    <div class="row">
                        <button type="submit" name="btn_login" class="col s12 btn btn-large waves-effect waves-light deep-purple">
                            Login
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>