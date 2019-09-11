<?php 
$base_url = base_url().'admin/Loan_registration/';
/* Status
-1 : Hủy
0: Đã xử lý
1: Đơn hàng mới
2: Đang xử lý
*/
?>
<div id="path">
	<ol class="breadcrumb">
		<li><a href="<?php echo base_url()?>admin">Admin</a></li>
		<li class="active">Danh sách Đăng ký vay</li>
	</ol>
</div>
<form action="<?php echo $base_url ?>" method="get" enctype="multipart/form-data">
	<div class="frm-search-box form-inline pull-left">
		<label class="mr-sm-2" for="">Từ khóa: </label>
		<input class="form-control mb-2 mr-sm-2 mb-sm-0" type="text" value="<?php echo $q?>" name="q" id="txtkeyword" placeholder="Tên khách hàng" value=""/>&nbsp;
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
			<th>Tên</th>
			<th>Phone</th>
			<th>Cmtnd</th>
			<th>Địa chỉ</th>
			<th>Hình thức vay</th>
			<th>Số tiền</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
		<?php
		$i=0; $img='';
		foreach ($result as $value) {
			$i++;
			if($value['status']==1){
				$img = '<a href="javascript:void(0)" title="Đăng ký mới"><i class="fa fa-times red" aria-hidden="true"></i><b class="red">Đăng ký mới</b></a>';
			}else if($value['status'] == 0){
				$img = '<a href="javascript:void(0)" title="Đăng ký đã xử lý"><i class="fa fa-check green" aria-hidden="true"></i><span class="green">Hoàn thành</span></a>';
			}else if($value['status'] == -1){
				$img = '<a href="javascript:void(0)" title="Đăng ký đã hủy"><i class="fa fa-times" style="color:#777" aria-hidden="true"></i>Hủy</a>';
			}else if($value['status']==2){
				$img = '<a href="javascript:void(0)" title="Đăng ký đang xử lý"><i class="fa fa-times info" aria-hidden="true"></i><span class="info">Đang xử lý</span></a>';
			}
			echo '<tr>
			<td>'.$i.'</td>
			<td>'.$value['fullname'].'</td>
			<td>'.$value['phone'].'</td>
			<td>'.$value['cmtnd'].'</td>
			<td>'.$value['address'].'</td>
			<td>'.$value['borrow_group'].'</td>
			<td>'.number_format($value['field1']).'</td>
			<td class="tbl_actions">
			'.$img.'
			<a href="'.$base_url.'edit/'.$value['id'].'" title="Thông tin"><i class="fa fa-pencil-square-o blue" aria-hidden="true"></i><span class="blue">Info</span></a>
			</td>
			</tr>';
		}
		?>
	</tbody>
</table>
<div class="clearfix"></div>
<?php if (isset($links)) { ?>
<?php echo $links ?>
<?php } ?>
