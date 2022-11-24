
<?php require_once(dirname(__DIR__).'../shared/header.php') ?>
<?php require_once(dirname(__DIR__).'../shared/navbar.php')?>
<?php require_once(dirname(__DIR__).'../shared/sidebar.php')?>

// Content here
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>DataTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Bảng danh sách người dùng</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="dataTable" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Tên</th>
                      <th>Ngày sinh</th>
                      <th>Email</th>
                      <th>Điểm tích lũy</th>
                      <th>Số điện thoại</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>2010785</td>
                      <td>Huỳnh Đại Vinh</td>
                      <td>9/9/2999</td>
                      <td>dvh@gmail.com</td>
                      <td>1000</td>
                      <td>1234567890</td>
                    </tr>                    
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>

<?php require_once(dirname(__DIR__).'../shared/footer.php')?>
<script>
  $(function () {
    $("#dataTable").DataTable({
      "paging":true,"searching":true,
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["csv", "excel", "pdf", "print"]
    }).buttons().container().appendTo('#dataTable_wrapper .col-md-6:eq(0)');

    arr =  ``
    for (let int = 0; int < 1000; int++) {
      arr += `<tr>
                      <td>2010785</td>
                      <td>Huỳnh Đại Vinh</td>
                      <td>9/9/2999</td>
                      <td>dvh@gmail.com</td>
                      <td>1000</td>
                      <td>1234567890</td>
                    </tr>       `
    }
    $("#dataTable").children('tbody').append(arr)
  });
</script>
<?php require_once(dirname(__DIR__).'../shared/foot.php')?>

// Js here