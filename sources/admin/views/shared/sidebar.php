<?php 
  require_once ADMIN_PATH."/models/PostType.php";
?>  
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-light-navy elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <span class="brand-text font-weight-light">Fashion</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?php echo PATH_URL_IMG . $_SESSION['user']['avatar'] ?>" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Hello, <?php echo $_SESSION['user']['username'] ?> </a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

          <!-- DashBoard -->
          <li class="nav-item menu-open">
            <a href="?controller=admin&action=home" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <!-- End Dashboard -->

          <!-- Users -->
          <li class="nav-item">
            <a href="?controller=users&action=home" class="nav-link">
              <i class="nav-icon fas fa-user"></i>
              <p>
                Người dùng
              </p>
            </a>
          </li>
          <!-- End Users -->

          <!-- Products -->
          <li class="nav-item">
            <a href="" class="nav-link">
              <i class="nav-icon fa fa-desktop"></i>
              <p>
                Sản phẩm
              </p>
            </a>
            <ul class="nav nav-treeview" style="display: none;">
              <li class="nav-item">
                <a href="?controller=products&action=home" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tất cả sản phẩm</p>
                </a>
              </li>
            </ul>
            <ul class="nav nav-treeview" style="display: none;">
              <li class="nav-item">
                <a href="pages/layout/top-nav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Top Navigation</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- End Products -->

          <!-- Storage -->
          <li class="nav-item">
            <a href="pages/widgets.html" class="nav-link">
              <i class="nav-icon fas fa-warehouse"></i>
              <p>
                Storage
              </p>
            </a>
          </li>
          <!-- End Storage -->


          <!-- Order -->
          <li class="nav-item">
            <a href="pages/widgets.html" class="nav-link">
              <i class="nav-icon fas fa-file-invoice-dollar"></i>
              <p>
                Order
              </p>
            </a>
          </li>
          <!-- End Order -->

          <!-- Statistics -->
          <li class="nav-item">
            <a href="pages/widgets.html" class="nav-link">
              <i class="nav-icon fas fa-chart-line"></i>
              <p>
                Statistics
              </p>
            </a>
<<<<<<< HEAD
          </li>
          <!-- End Statistics -->

=======
            <ul class="nav nav-treeview" style="display: none;">
              <li class="nav-item">
                <a href="?controller=posts" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tất cả bài viết</p>
                </a>
              </li>
            </ul>
            <ul class="nav nav-treeview" style="display: none;">
              <li class="nav-item">
                <a href="?controller=posts&action=status&by=0" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Bài viết chưa publish</p>
                </a>
              </li>
            </ul>
            <ul class="nav nav-treeview" style="display: none;">
              <li class="nav-item">
                <a href="?controller=posts&action=status&by=1" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Bài viết publish</p>
                </a>
              </li>
            </ul>
            <ul class="nav nav-treeview" style="display: none;">
              <li class="nav-item">
                <a href="?controller=posts&action=status&by=2" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thùng rác</p>
                </a>
              </li>
            </ul>

            <ul class="nav nav-treeview" style="display: none;">   
              <a class="nav-link active">
                <p>
                    Chủ đề
                </p>
              </a>
              <?php 
                $ptypes = PostType::all();
                foreach($ptypes as $type) {
                  $slug = $type["slug"];
                  $type_name = $type["type_name"];

                  echo '<ul class="nav nav-treeview" style="display: none;">  
                    <li class="nav-item">
                      <a href="?controller=posts&action=home&by='.$slug.'" class="nav-link">
                        <i class="far fa-circle nav-icon"></i>
                        <p>'.$type_name.'</p>
                      </a>
                    </li>
                  </ul>';
                }
              ?>
            </ul>
          </li>
>>>>>>> main

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>