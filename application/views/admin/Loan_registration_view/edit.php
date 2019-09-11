<?php
$base_url = base_url().'admin/Loan_registration/';
$status = -1;
?>
<div id="path">
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url()?>admin">Admin</a></li>
        <li><a href="<?php echo $base_url ?>">Danh sách đăng ký vay</a></li>
        <li class="active">Thông tin đăng ký vay</li>
    </ol>
</div>
<div id="action">
    <small>Các mục đánh dấu <font color="red">*</font> là thông tin bắt buộc</small>
    <div style="color: red">
        <?php
        if(isset($error)){
            echo $error;
        }
        ?>
    </div>
    <h3>Thông tin khách hàng</h3>
    <table class="table table-bordered">
        <tr>
            <td>Tên khách hàng</td>
            <td><?= $result['fullname'] ?></td>
        </tr>
        <tr>
            <td>Số điện thoại</td>
            <td><?= $result['phone'] ?></td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td><?= $result['address'] ?></td>
        </tr>
        <tr>
            <td>Thành phố</td>
            <td><?= $result['province'] ?></td>
        </tr>
        <tr>
            <td>Hình thức vay</td>
            <td><?= $parent['name'] ?></td>
        </tr>
        <?php
        foreach ($field as $key => $value) {
            $code = $value['code'];
            echo '<tr>
            <td>'.$value['name'].'</td>
            <td>'.$result["$code"].'</td>
            </tr>';
        }
        ?>
        <tr>
            <td>Số tiền muốn vay</td>
            <td><?= number_format($result['number']).' đ' ?></td>
        </tr>
        <tr>
            <td>Trạng thái</td>
            <td>
                <?php
                if($result['status']==1){
                    $status = 1;
                    echo '<b class="red">Đăng ký vay mới</b>';
                }else if($result['status'] == 0){
                    $status = 0;
                    echo '<b class="green">Đăng ký vay đã hoàn thành</b>';
                }else if($result['status'] == -1){
                    $status = -1;
                    echo '<b>Đăng ký vay đã hủy</b>';
                }else if($result['status']==2){
                    $status = 2;
                    echo '<b class="info">Đăng ký vay đang xử lý</b>';
                }
                ?>
            </td>
        </tr>
    </table>

    <hr>
    <form class="control" method="post" action="<?= $base_url ?>do_update">
        <input type="hidden" name="txtid" value="<?= $result['id'] ?>">
        <div class="form-group">
            <?php
            switch ($status) {
                case '1':
                echo '<label class="radio-inline">
                <input name="opt_status" type="radio" value="1" checked>Đăng ký vay
                </label>
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="2">Đang xử lý
                </label>
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="0">Hoàn thành
                </label>
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="-1">Đã bị hủy
                </label>';
                break;

                case '2':
                echo '
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="2" checked>Đang xử lý
                </label>
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="0">Hoàn thành
                </label>
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="-1">Đã bị hủy
                </label>';
                break;

                case '0':
                echo '
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="0" checked>Hoàn thành
                </label>
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="-1">Đã bị hủy
                </label>';
                break;

                case '-1':
                echo '
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="-1" checked>Đã bị hủy
                </label>';
                break;
                
                default:
                echo '
                <label class="radio-inline">
                <input name="opt_status" type="radio" value="-1" checked>Đã bị hủy
                </label>';
                break;
            }
            ?>
        </div>
        <?php
        if($result['status'] != -1 && $result['status'] != 0){
            echo '<input type="submit" class="btn btn-primary" value="Cập nhật Đăng ký vay">';
        }
        ?>
    </form>
</div>
