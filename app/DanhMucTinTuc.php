<?php
  require_once('Connect.php');
  $db = new Database();
  include("DungChung.php")
?>

<div class="Phan2Phai">
    <div class="DangNhapThanhCong">
        <p>Danh Mục Tin Tức</p>
    </div>
    <div class="container" style="margin-top: 20px;margin-left:5px;">
        <div class="row">
            <form action="TimKiemDMTT.php" method="get" style="margin-left: 5px;">
                <input id="MaDMTT" type="number" class="col-md-20 form-control" name="MaDMTT" value="Nhập mã tin tức"
                    style="margin-left: 90px;">
                <input type="submit" name="Ok" value="search" class="btn btn-danger"
                    style="margin-left: 10px;margin-top: -66px;;background:#f86c6b" />
            </form>
            <div class="col-md-2"><a href="AddEditDMTT.php" class="btn btn-danger" role="button"
                    style="margin-left:730px;width:157px;height:40px;padding-bottom:20px;background:#f86c6b">Thêm Danh Mục</a></div>
        </div>
        <table class="table table-hover">
            <thead>
                <tr class="bg-success text-white" style=" text-align: center;">
                    <th>Mã Danh Mục Tin Tức</th>
                    <th>Tên Danh Mục Tin Tức</th>
                    <th>Thay Đổi</th>
                    <th>Xoá Bỏ</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                  $result = $db->conn->query( 'SELECT count(MaDMTT) as total from danhmuctintuc');
                  $row = mysqli_fetch_assoc($result);
                  $total_records = $row['total'];
                  $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
                        $limit = 6;
                        $total_page = ceil($total_records / $limit);
                        if ($current_page > $total_page){
                          $current_page = $total_page;
                      }
                      else if ($current_page < 1){
                          $current_page = 1;
                      }
                      $start = ($current_page - 1) * $limit;
                      $result = $db->conn->query( "SELECT * FROM danhmuctintuc LIMIT $start, $limit");
                 
                    foreach($result as $std){
                      echo '<tr style=" text-align: center;">
                        <td >'.$std['MaDMTT'].'</td>
                        <td >'.$std['TenDMTT'].'</td>
                        <td><button class="btn btn-warning" onclick=\'window.open("AddEditDMTT.php?id='.$std['MaDMTT'].'","_self")\'>Edit</button></td>
                        <td><button class="btn btn-info" onclick=\'window.open("XoaDMTT.php?id='.$std['MaDMTT'].'","_self")\'>Delete</button></td>
                      </tr>'; 
                  }   
                ?>
            </tbody>
        </table>
        <ul class="pagination">
            <?php
                      if ($current_page > 1 && $total_page > 1){
                        echo '<a href="DanhMucTinTuc.php?page='.($current_page-1).'" style="color:black;margin-left:15px">Prev</a>  ';
                    }
                    else
                    {
                      echo '<span style="color:black;margin-left:15px">Prev</span> ';
                    }
                    for ($i = 1; $i <= $total_page; $i++){     
                      if ($i == $current_page){
                        echo '<span style="color:black;margin-left:15px">'.$i.'</span>  ';
                      }
                      else{
                          echo '<a href="DanhMucTinTuc.php?page='.$i.'" style="color:black;margin-left:15px">'.$i.'</a>';
                      }
                  }
                  if ($current_page < $total_page && $total_page > 1){
                      echo '<a href="DanhMucTinTuc.php?page='.($current_page+1).'" style="color:black;margin-left:15px">Next</a>';
                  }
                  else 
                  {
                    echo '<span style="color:black;margin-left:15px">Next</span> ';
                  }
                  ?>
        </ul>
    </div>
</div>