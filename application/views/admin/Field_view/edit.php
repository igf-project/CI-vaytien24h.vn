<?php
$base_url = base_url().'admin/Field/';
?>
<div id="path">
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url()?>admin">Admin</a></li>
        <li><a href="<?php echo $base_url ?>">Field</a></li>
        <li class="active">Edit field</li>
    </ol>
</div>
<div id="action">
    <small>Các mục đánh dấu <font color="red">*</font> là thông tin bắt buộc</small><hr/>
    <form method="post" action="<?php echo $base_url ?>do_edit" enctype="multipart/form-data">
        <input type="hidden" name="txtid" value="<?php echo $id;?>">
        <div class="row">
            <div class='form-group col-sm-6'>
                <label class="control-label">Tên field</label>
                <input name="txt_name" type="text" class='form-control' <?php echo $result['name']?> placeholder='Tên field'/>
            </div>
            <div class='form-group col-sm-6'>
                <label class="control-label">Tên hiện trong field</label>
                <input name="txt_intro" type="text" class='form-control' value="<?php echo $result['intro']?>" placeholder='Tên hiện trong field' required/>
            </div>
            <div class='col-md-6'>
                <label>Trạng thái</label>
                <div class="form-group">
                    <?php
                    if($result['isactive']==1){
                        echo '<label class="radio-inline"><input name="optactive" type="radio" value="1" checked>Active</label>
                        <label class="radio-inline"><input name="optactive" type="radio" value="0">Deactive</label>';
                    }else{
                        echo '<label class="radio-inline"><input name="optactive" type="radio" value="1">Active</label>
                        <label class="radio-inline"><input name="optactive" type="radio" value="0" checked>Deactive</label>';
                    }
                    ?>
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
<script type="text/javascript">
    $(document).ready(function() {
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