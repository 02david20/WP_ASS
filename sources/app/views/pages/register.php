<?php
if (isset($_POST["username"]) && isset($_POST["password"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];
    login($username, $password);
    if (isset($_SESSION["user"])) {
        header("Location: index.php");
    } else {
        echo '
        <script>alert("Sai tên đăng nhập hoặc mật khẩu");</script>
        ';
    }
}
?>

<!-- Sign up form -->
<section class="signup">
    <div class="container">
        <div class="signup-content">
            <div class="signup-form">
                <h2 class="form-title">Sign up</h2>
                <form method="POST" class="register-form" id="register-form">
                    <div class="form-group">
                        <label for="fullname"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input type="text" name="fullname" id="fullname" placeholder="Tên" />
                    </div>
                    <div class="form-group">
                        <label for="username"><i class="zmdi  zmdi-account material-icons-name"></i></label>
                        <input type="text" name="username" id="username" placeholder="Tên tài khoản" />
                    </div>
                    <div class="form-group">
                        <label for="password"><i class="zmdi zmdi-lock"></i></label>
                        <input type="password" name="password" id="password" placeholder="Mật khẩu" />
                    </div>
                    <div class="form-group">
                        <label for="re_password"><i class="zmdi zmdi-lock-outline"></i></label>
                        <input type="password" name="re_password" id="re_password" placeholder="Nhập lại mật khẩu" />
                    </div>
                    <!-- <div class="form-group">
                        <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                        <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all
                            statements in <a href="#" class="term-service">Terms of service</a></label>
                    </div> -->
                    <div class="form-group form-button">
                        <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                    </div>
                </form>
            </div>
            <div class="signup-image">
                <figure><img src="img/form/signup-image.jpg" alt="sing up image"></figure>
                <a href="/index.php?controller=pages&action=login" class="signup-image-link">Đã có tài khoản</a>
            </div>
        </div>
    </div>
</section>