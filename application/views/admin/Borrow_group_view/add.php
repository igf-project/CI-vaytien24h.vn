<?php 
$base_url = base_url().'admin/Borrow_group/';
?>

<div id="path">
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url()?>admin">Admin</a></li>
        <li><a href="<?php echo $base_url ?>">Hình thức vay</a></li>
        <li class="active">Thêm hình thức vay</li>
    </ol>
</div>
<div id="action">
    <small>Các mục đánh dấu <font color="red">*</font> là thông tin bắt buộc</small><hr/>
    <div style="color: red">
        <?php
        if(isset($error)){
            echo $error;
        }
        ?>
    </div>
    <form action="<?php echo $base_url ?>do_add" enctype="multipart/form-data" method="post" accept-charset="utf-8">
        <div class="row">
            <div class='form-group col-sm-6'>
                <label class="control-label">Tên hình thức vay</label><font color="red">*</font>
                <input name="txt_name" type="text" class='form-control' placeholder='Tên'/>
            </div>
            <div class='col-sm-6'>
                <label>Trạng thái</label>
                <div class="form-group">
                    <label class="radio-inline"><input name="optactive" type="radio" value="1" checked>Active</label>
                    <label class="radio-inline"><input name="optactive" type="radio" value="0">Deactive</label>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="text-center">
            <br/>
            <a href="<?php echo $base_url ?>" class="btn btn-default">Quay lại</a>
            <input type="submit" name="cmdsave" id="cmdsave"  class="btn btn-primary" value="Lưu thông tin">
        </div>
    </form>
</div>
