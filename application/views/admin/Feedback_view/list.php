<?php 
$base_url = base_url().'admin/Feedback/';
?>
<style type="text/css">
.img-slider {
	height: 75px;
	width: auto;
}
</style>
<div id="path">
	<ol class="breadcrumb">
		<li><a href="<?php echo base_url()?>admin">Admin</a></li>
		<li class="active">Feedback</li>
	</ol>
</div>
<form action="<?php echo $base_url ?>" method="get" enctype="multipart/form-data">
	<div class="frm-search-box form-inline pull-left">
		<label class="mr-sm-2" for="">Từ khóa: </label>
		<input class="form-control mb-2 mr-sm-2 mb-sm-0" type="text" value="<?php echo $q?>" name="q" id="txtkeyword" placeholder="Keyword" value="" required/>&nbsp;
		<button type="submit" id="button" class="btn btn-success">Tìm kiếm</button>
		<select name="action" class="form-control" id="cboActive">
			<option value="all">Tất cả</option>
			<option value="1">Hiển thị</option>
			<option value="0">Ẩn</option>
		</select>
		<script type="text/javascript">
			cbo_Selected('cboActive','<?php echo $action;?>');
		</script>
	</div>
	<div class="pull-right">
		<a href="<?php echo $base_url ?>add" class="btn btn-success button"><i class="fa fa-plus" aria-hidden="true"></i> Thêm mới</a>
	</div>
</form>
<div class="clearfix"></div>
<?php
if (isset($success_message)) {
	echo $success_message;
}
if (isset($error_message)) {
	echo $error_message;
}
?>
<table class="table table-striped table-bordered" cellspacing="0" width="100%">
	<thead>
		<tr>
			<th>#</th>
			<th>Ảnh</th>
			<th>Tên</th>
			<th>Chức vụ</th>
			<th>Sắp xếp</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
		<?php
		$i=0; $img='';
		foreach ($result as $value) {
			$i++;
			if($value['isactive']==1){
				$img = '<a href="'.$base_url.'active/'.$value['id'].'" title="Hiển thị"><i class="fa fa-check green" aria-hidden="true"></i>Public</a>';
			}else{
				$img = '<a href="'.$base_url.'active/'.$value['id'].'" title="Hiển thị"><i class="fa fa-times red" aria-hidden="true"></i>Public</a>';
			}
			echo '<tr>
			<td>'.$i.'</td>
			<td><img src="'.base_url().$value['thumb'].'" class="img-responsive img-slider"></td>
			<td>'.$value['name'].'</td>
			<td>'.$value['intro'].'</td>
			<td><input type="text" name="txt_order" class="saveOrder" data-id="'.$value['id'].'" value="'.$value['order'].'" size="4" class="order"></td>
			<td class="tbl_actions">
			'.$img.'
			<a href="'.$base_url.'edit/'.$value['id'].'" title="Sửa"><i class="fa fa-pencil-square-o blue" aria-hidden="true"></i>Edit</a>
			<a href="'.$base_url.'delete/'.$value['id'].'" title="Xóa" onclick="return confirm(\'Bạn có chắc muốn xóa ?\')"><i class="fa fa-trash red" aria-hidden="true"></i>Delete</a>
			</td>
			</tr>';
		}
		?>
	</tbody>
</table>
<script type="text/javascript">
	$(document).ready(function(){
		$('.saveOrder').change(function(){
			var value 	= $(this).val();
			var id 		= $(this).attr('data-id');
			$.ajax({
				type : "POST",
				dataType : "json",
				data : {"id" : id, "value" : value},
				url  : '<?php echo $base_url ?>saveOrder',
				success : function(result){}
			})
		})
	})
</script>
