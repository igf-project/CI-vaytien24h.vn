<?php
$base_url = base_url().'admin/Product/';

if($result['thumb']==''){
    $thumb = $this->config->item('THUMB_DEFAULT');
}else{
    $thumb = base_url().$result['thumb'];
}
?>
<div id="path">
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url()?>admin">Admin</a></li>
        <li><a href="<?php echo $base_url ?>">Sản phẩm</a></li>
        <li class="active">Sửa sản phẩm</li>
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
        <ul class="nav nav-tabs" role="tablist">
            <li class="active">
                <a href="#info" role="tab" data-toggle="tab">
                    Thông tin
                </a>
            </li>
            <li>
                <a href="#tab_images" role="tab" data-toggle="tab">
                    Hình ảnh
                </a>
            </li>
            <li>
                <a href="#seo" role="tab" data-toggle="tab">
                    Seo
                </a>
            </li>
        </ul>
        <form action="<?php echo $base_url ?>do_edit" enctype="multipart/form-data" method="post" accept-charset="utf-8">
            <input type="hidden" name="txtid" value="<?php echo $result['id'] ?>">
            <div class="tab-content">

                <!-- Tab infomation -->
                <div class="tab-pane fade active in" id="info">
                    <div class="row">
                        <div class='form-group col-md-6'>
                            <label>Tên</label><font color="red">*</font>
                            <input name="txt_name" type="text" class='form-control' value="<?= $result['name'] ?>" placeholder='Tên sản phẩm' required />
                        </div>
                        <div class='form-group col-md-6'>
                            <label>Mã code</label><font color="red">*</font>
                            <input name="txt_pro_code" type="text" class='form-control' placeholder='Mã code nhóm sản phẩm' value="<?= $result['pro_code'] ?>" required readonly />
                        </div>
                        <div class='form-group col-sm-6 col-md-6'>
                            <label>Nhóm cha</label>
                            <select name="cbo_par" id="cbo_par" class="form-control">
                                <option value="">Chọn một nhóm</option>
                                <?php
                                foreach ($parent as $item) {
                                    if($item['id'] == $result['cata_id']){
                                        echo '<option value="'.$item['id'].'" selected>'.$item['name'].'</option>';
                                    }else{
                                        echo '<option value="'.$item['id'].'">'.$item['name'].'</option>';
                                    }
                                }
                                ?>
                            </select>
                            <font id='err-gmember' color="red"></font>
                            <div class="clearfix"></div>
                        </div>

                        <div class='form-group col-md-6'>
                            <label>Giá</label><font color="red">*</font>
                            <input name="txt_price" type="number" id="txt_price" min="0" class='form-control' value="<?= $result['start_price'] ?>" placeholder='Giá sản phẩm' required />
                        </div>
                        <div class='form-group col-md-6'>
                            <label>Số lượng</label>
                            <input name="txt_quantity" type="number" min="0" id="txt_quantity" class='form-control' value="<?= $result['quantity'] ?>" placeholder='Số lượng sản phẩm'/>
                        </div>

                        <div class='form-group col-sm-6'>
                            <label class="control-label">Image</label>
                            <input name="url_image" type="hidden"  value="<?php echo $result['thumb'];?>">
                            <input name="fileImg" type="file" id="file-thumb" class='form-control' />
                            <div id="show-img">
                                <img class="img-display" src="<?php echo $thumb ?>">
                            </div>
                        </div>
                        <div class='col-sm-6'>
                            <label>Trạng thái</label>
                            <div class="form-group">
                                <label class="radio-inline"><input name="optactive" type="radio" value="1" <?php echo $result['isactive']==1 ? 'checked':'';?>>Active</label>
                                <label class="radio-inline"><input name="optactive" type="radio" value="0" <?php echo $result['isactive']==0 ? 'checked':'';?>>Deactive</label>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class='form-group col-sm-12'>
                            <label class="control-label">Mô tả ngắn <small>(Không nên quá 50 từ)</small></label>
                            <textarea name="txt_intro" id="txt_intro" rows="3" class='form-control' placeholder='Mô tả ngắn'/><?= $result['intro'] ?></textarea>
                        </div>
                        <script type="text/javascript">CKEDITOR.replace("txt_intro", {height : '100px'}); </script>

                        <div class='form-group col-sm-12'>
                            <label class="control-label">Nội dung</label>
                            <textarea name="txt_fulltext" id="txt_fulltext" rows="3" class='form-control' placeholder='Mô tả ngắn'/><?= $result['fulltext'] ?></textarea>
                        </div>
                        <script type="text/javascript">CKEDITOR.replace("txt_fulltext", {height : '400px'}); </script>
                    </div>
                </div>

                <!-- Tab images -->
                <div class="tab-pane fade" id="tab_images">
                    <div class="row">
                        <div class="form-group col-md-4 col-sm-6">
                            <input type="file" name="txt_images[]" class="form-control">
                        </div>
                        <div class="form-group col-md-4 col-sm-6">
                            <input type="file" name="txt_images[]" class="form-control">
                        </div>
                        <div class="form-group col-md-4 col-sm-6">
                            <input type="file" name="txt_images[]" class="form-control">
                        </div>
                        <div class="form-group col-md-4 col-sm-6">
                            <input type="file" name="txt_images[]" class="form-control">
                        </div>
                        <div class="form-group col-md-4 col-sm-6">
                            <input type="file" name="txt_images[]" class="form-control">
                        </div>
                        <div class="form-group col-md-4 col-sm-6">
                            <input type="file" name="txt_images[]" class="form-control">
                        </div>
                    </div>
                </div>

                <!-- Tab Seo -->
                <div class="tab-pane fade" id="seo">
                    <div class='form-group'>
                        <label class="control-label">Đổi trả hàng</label>
                        <textarea name="txt_policy" id="txt_policy" rows="3" class='form-control' placeholder='Quy định đổi trả hàng'/><?= $result['policy'] ?></textarea>
                    </div>
                    <script type="text/javascript">CKEDITOR.replace("txt_policy", {height : '100px'}); </script>
                    <div class='form-group'>
                        <label>Mô tả tiêu đề</label>
                        <input name="txt_metatitle" type="text" id="txt_metatitle" class='form-control' value="<?php echo $result['meta_title'] ?>" placeholder='' rows="1"/>
                    </div>
                    <div class='form-group'>
                        <label>Từ khóa</label>
                        <textarea class="form-control" name="txt_metakey" id="txt_metakey" rows="2"><?php echo $result['meta_key'] ?></textarea>
                    </div>
                    <div class='form-group'>
                        <label>Description</label>
                        <textarea class="form-control" name="txt_metadesc" id="txt_metadesc" rows="3"><?php echo $result['meta_desc'] ?></textarea>
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
<script type="text/javascript">
    $(document).ready(function() {
        $("#txt_relateContent").select2();

        $("input#file-thumb").change(function(e) {
            for (var i = 0; i < e.originalEvent.srcElement.files.length; i++) {
                var file = e.originalEvent.srcElement.files[i];
                var img = document.createElement("img");
                var reader = new FileReader();
                reader.onloadend = function() {
                    img.src = reader.result;
                }
                reader.readAsDataURL(file);
                $('#show-img').addClass('show-img');
                $('#show-img').html(img);
            }
        });
    });

</script>