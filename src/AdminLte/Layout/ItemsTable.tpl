{if $items}
<div class="box box-{$this->args('color_type', 'default')}">
{if $title}
	<div class="box-header">
		<h3 class="box-title">{$title}</h3>
	</div>
{/if}
	<!-- /.box-header -->
	<div class="box-body no-padding">
		<table class="{$this->layout()->table_class()}">
			<thead>
				<tr>
{foreach $item_fields as $prop_name => $prop_title}
					<!-- {$prop_name} -->
	{$this->make_sortable_th($prop_name, $prop_title)}
{/foreach}
				</tr>
			</thead>
			<tbody>
{foreach $sections as $x}
	{$items = $x.items}
	{if $x.title}
		<tr><th  colspan="{count($item_fields)}" class="bg-gray">{$x.title}</th></tr>
	{else if !$x@first}
		<tr><th  colspan="{count($item_fields)}" class="bg-gray">&nbsp;</th></tr>
	{/if}
	{foreach $items as $x}
				<tr{if $x->get('items_list_table_row_class')} class="{join(' ', $x->get('items_list_table_row_class'))}"{/if}>
		{foreach $item_fields as $prop_name => $prop_title}
			{$val=bors_objects_helper::get_mixed_hash($x, $prop_name, $prop_title)}
			{if is_array($val)}
					<td{if $val.html5_data && $val.html5_data.sort} data-sort="{$val.html5_data.sort}"{/if}>{$val.value}</td>
			{else}
					<td>{$val}</td>
			{/if}
		{/foreach}
	{/foreach}
				</tr>
{/foreach}
			</tbody>
		</table>
	</div>
 <!-- /.box-body -->
</div>
{/if}
