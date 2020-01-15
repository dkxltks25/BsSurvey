<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                        <input class="validate invalid" type="text" name="StudentNumber" id="StudentNumber" required="">
                        <label for="StudentNumber" class="">학번을 입력해주세요</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 ">
                        <input class="validate invalid" type="password" name="password" id="password" required="">
                        <label for="password" class="">비밀번호 혹은 생년월일 앞자리를 입력해주세요</label>
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

