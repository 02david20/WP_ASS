<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
    integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
<link rel="stylesheet" href="public/css/profile.css" />

<div class="container">
    <div class="row">
        <div class="col-12">
            <br>
            <!-- Form START -->
            <form class="file-upload">
                <div class="row mb-5 gx-5">
                    <!-- Contact detail -->
                    <div class="col-xxl-8 mb-5 mb-xxl-0">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <h4 class="mb-4 mt-0">Thông tin liên lạc</h4>
                                <!-- First Name -->
                                <div class="col-md-6">
                                    <label class="form-label">Tên người dùng</label>
                                    <?php
                                    echo '<input type="text" class="form-control" placeholder="" aria-label="Full name"
                                    value="' . $_SESSION["user"]['fullname'] . '">'
                                        ?>

                                </div>
                                <!-- Last name -->
                                <div class="col-md-6">
                                    <label class="form-label">Tên tài khoản</label>
                                    <?php
                                    echo '<input type="text" class="form-control" placeholder="" aria-label="Username" readonly
                                    value="' . $_SESSION["user"]['username'] . '">'
                                        ?>
                                </div>
                                <!-- Phone number -->
                                <div class="col-md-4">
                                    <label class="form-label">Số điện thoại</label>
                                    <?php
                                    echo '<input type="text" class="form-control" placeholder="" aria-label="Số điện thoại"
                                    value="' . $_SESSION["user"]['phone_num'] . '">'
                                        ?>
                                </div>
                                <!-- Email -->
                                <div class="col-md-4">
                                    <label for="inputEmail4" class="form-label">Email</label>
                                    <?php
                                    echo '<input type="email" class="form-control" placeholder="" aria-label="Email"
                                    value="' . $_SESSION["user"]['email'] . '">'
                                        ?>
                                </div>

                                <!-- Birthday -->
                                <div class="col-md-4">
                                    <label class="form-label">Sinh nhật</label>
                                    <?php
                                    echo '<input type="date" class="form-control" placeholder="" aria-label="Sinh nhật"
                                    value="' . $_SESSION["user"]['dob'] . '">'
                                        ?>
                                </div>
                                <!-- Address -->
                                <div class="col-md-12">
                                    <label class="form-label">Địa chỉ</label>
                                    <?php
                                    echo '<input type="email" class="form-control" placeholder="" aria-label="Email"
                                    value="' . $_SESSION["user"]['address'] . '">'
                                        ?>
                                </div>
                            </div> <!-- Row END -->
                        </div>
                    </div>
                    <!-- Upload profile -->
                    <div class="col-xxl-4">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <h4 class="mb-4 mt-0">Upload your profile photo</h4>
                                <div class="text-center">
                                    <!-- Image upload -->
                                    <input name="avatar" type="file" class="form-control dropify">
                                    <br>
                                    <!-- Button -->
                                    <input type="file" id="customFile" name="file" hidden="">
                                    <label class="btn btn-success-soft btn-block" for="customFile">Upload</label>
                                    <button type="button" class="btn btn-danger-soft">Remove</button>
                                    <!-- Content -->
                                    <p class="text-muted mt-3 mb-0"><span class="me-1">Note:</span>Minimum size 300px x
                                        300px</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- Row END -->

                <!-- Social media detail -->
                <div class="row mb-5 gx-5">

                    <!-- change password -->
                    <div class="col-xxl-12">
                        <div class="bg-secondary-soft px-4 py-5 rounded">
                            <div class="row g-3">
                                <h4 class="my-4">Đổi mật khẩu</h4>
                                <!-- Old password -->
                                <div class="col-md-6">
                                    <label for="exampleInputPassword1" class="form-label">Mật khẩu cũ</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1">
                                </div>
                                <!-- Confirm password -->
                                <div class="col-md-6">
                                    <label for="exampleInputPassword3" class="form-label">Nhập lại mật khẩu cũ</label>
                                    <input type="password" class="form-control" id="exampleInputPassword3">
                                </div>
                                <!-- New password -->
                                <div class="col-md-12">
                                    <label for="exampleInputPassword2" class="form-label">Mật khẩu mới</label>
                                    <input type="password" class="form-control" id="exampleInputPassword2">
                                </div>

                            </div>
                        </div>
                    </div>
                </div> <!-- Row END -->
                <!-- button -->
                <div class="gap-3 d-md-flex justify-content-md-start text-center">
                    <button type="submit" class="btn btn-primary btn-lg">Cập nhật thông tin</button>
                </div>
                <br>
            </form> <!-- Form END -->
        </div>
    </div>
</div>