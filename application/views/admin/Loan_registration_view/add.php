<?php 
$base_url = base_url().'admin/Loan_registration/';
?>

<div id="path">
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url()?>admin">Admin</a></li>
        <li><a href="<?php echo $base_url ?>">Danh sách đăng ký vay</a></li>
        <li class="active">Thêm đămg ký vay</li>
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
    <div class="box-tabs">
        <form action="<?php echo $base_url ?>do_add" enctype="multipart/form-data" method="post" accept-charset="utf-8">
            <div class="tab-content">
                <div class="tab-pane fade active in" id="info">
                    <div class="row">
                        <div class='form-group col-md-6'>
                            <label>Tên khách hàng</label><font color="red">*</font>
                            <input name="txt_name" type="text" class='form-control' placeholder='Tên khách hàng' required />
                        </div>
                        <div class='form-group col-sm-6 col-md-6'>
                            <label>Hình thức vay</label><font color="red">*</font>
                            <select name="cbo_type" id="cbo_type" class="form-control" required>
                                <option value="">Chọn một hình thức</option>
                                <?php
                                foreach ($parent as $item) {
                                    echo '<option value="'.$item['id'].'">'.$item['name'].'</option>';
                                }
                                ?>
                            </select>
                            <font id='err-gmember' color="red"></font>
                            <div class="clearfix"></div>
                        </div>
                        <div class='form-group col-sm-6'>
                            <label class="control-label">Số điện thoại</label><font color="red">*</font>
                            <input name="txt_phone" type="tel" class='form-control' placeholder="Số điện thoại" />
                        </div>
                        <div class="form-group col-sm-6">
                            <label class="control-label">Tỉnh / TP</label><font color="red">*</font>
                            <select name="province" class="form-control" required>
                                <optgroup label="Miền Nam">
                                    <option value="TP Hồ Chí Minh">TP Hồ Chí Minh</option>
                                    <option value="Bình Dương">Bình Dương</option>
                                    <option value="Đồng Nai">Đồng Nai</option>
                                    <option value="Vũng Tàu">Vũng Tàu</option>
                                    <option value="Long An">Long An</option>
                                    <option value="Tây Ninh">Tây Ninh</option>
                                    <option value="Cần Thơ">Cần Thơ</option>
                                    <option value="An Giang">An Giang</option>
                                    <option value="Kiên Giang">Kiên Giang</option>
                                    <option value="Tiền Giang">Tiền Giang</option>
                                    <option value="Đồng Tháp">Đồng Tháp</option>
                                    <option value="Vĩnh Long">Vĩnh Long</option>
                                    <option value="Cà Mau">Cà Mau</option>
                                </optgroup>
                                <optgroup label="Miền Bắc">
                                    <option value="Hà Nội">Hà Nội</option>
                                    <option value="Hải Phòng">Hải Phòng</option>
                                    <option value="Bắc Ninh">Bắc Ninh</option>
                                    <option value="Vĩnh Phúc">Vĩnh Phúc</option>
                                </optgroup>
                                <optgroup label="Miền Trung">
                                    <option value="Đà Nẵng">Đà Nẵng</option>
                                    <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                                    <option value="Quảng Nam">Quảng Nam</option>
                                    <option value="Quảng Ngãi">Quảng Ngãi</option>
                                    <option value="Khánh Hòa">Khánh Hòa</option>
                                </optgroup>
                            </select>
                        </div>
                        <?php
                        foreach ($field as $key => $value) {
                            echo '<div class="form-group col-sm-6">
                            <label class="control-label">'.$value['name'].'</label>
                            <input name="'.$value['code'].'" type="text" class="form-control" placeholder="'.$value['intro'].'" />
                            </div>';
                        }
                        ?>
                        <div class='form-group col-sm-12'>
                            <label class="control-label">Địa chỉ</label>
                            <textarea name="txt_address" rows="3" class='form-control' placeholder='Địa chỉ'/></textarea>
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
                </div>
            </div>

            <div class="text-center">
                <br/>
                <a href="<?php echo $base_url ?>" class="btn btn-default">Quay lại</a>
                <input type="submit" name="cmdsave" id="cmdsave"  class="btn btn-primary" value="Lưu thông tin">
            </div>
        </form>
    </div>
</div>
