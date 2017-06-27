{if $items}
<div class="box {$box_type}">
	<div class="box-header">
		<h3 class="box-title">{$title}</h3>

		<div class="box-tools pull-right">
			<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
			</button>
			<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
		</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body no-padding">
		<table class="table table-condensed">
			<tr>
{foreach $item_fields as $prop_name => $prop_title}
				<th>{$prop_title}</th>
{/foreach}
			</tr>
{foreach $items as $row}
			<tr>
	{foreach $item_fields as $prop_name => $prop_title}
		{$val=bors_objects_helper::get_mixed_hash($row, $prop_name, $prop_title)}
				<td>{$val}</td>
	{/foreach}
			</tr>
{/foreach}
		</table>
	</div>
	<!-- /.box-body -->

{if $footer}
	<div class="box-footer clearfix">
		{$footer}
	</div>
{else}
	{if $url_title}
	<div class="box-footer text-center">
		<a href="{$url}" class="uppercase">{$url_title}</a>
	</div>
	{/if}
{/if}

</div>
{/if}
