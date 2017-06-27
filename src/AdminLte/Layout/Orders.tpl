<!-- TABLE: LATEST ORDERS -->
<div class="box {$box_type}">
	<div class="box-header with-border">
		<h3 class="box-title">{$title}</h3>

		<div class="box-tools pull-right">
			<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
			</button>
			<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
		</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body">
		<div class="table-responsive">
			<table class="table no-margin">
				<thead>
				<tr>
{foreach $item_fields as $prop_name => $prop_title}
					<th>{$prop_title}</th>
{/foreach}
				</tr>
				</thead>
				<tbody>
{foreach $items as $row}
				<tr>
	{foreach $item_fields as $prop_name => $prop_title}
		{$val=bors_objects_helper::get_mixed_hash($row, $prop_name, $prop_title)}
					<td>{$val}</td>
	{/foreach}
				</tr>
{/foreach}
				</tbody>
			</table>
		</div>
		<!-- /.table-responsive -->
	</div>
	<!-- /.box-body -->
{if $footer}
	<div class="box-footer clearfix">
		{$footer}
{*
		<a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-left">Place New Order</a>
		<a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-right">View All Orders</a>
*}
	</div>
	<!-- /.box-footer -->
{else}
	{if $url_title}
	<div class="box-footer text-center">
		<a href="{$url}" class="uppercase">{$url_title}</a>
	</div>
	{/if}
{/if}
</div>
<!-- /.box -->
