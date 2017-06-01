<!-- USERS LIST -->
<div class="box {$box_type}">
	<div class="box-header with-border">
		<h3 class="box-title">{$title}</h3>

		<div class="box-tools pull-right">
{*
			<span class="label label-danger">8 New Members</span>
*}
			<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
			<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
		</div>
	</div>
	<!-- /.box-header -->
	<div class="box-body no-padding">
		<ul class="users-list clearfix">
{foreach $users as $u}
			<li>
				<div class="text-center">{$u->image()->thumbnail('64x64')->html()}</div>
				<a class="users-list-name" href="{$u->url()}">{$u->title()}</a>
{*
				<span class="users-list-date">Today</span>
*}
			</li>
{/foreach}
		</ul>
		<!-- /.users-list -->
	</div>
	<!-- /.box-body -->
{if $url_title}
	<div class="box-footer text-center">
		<a href="{$url}" class="uppercase">{$url_title}</a>
	</div>
{/if}
	<!-- /.box-footer -->
</div>
<!--/.box -->
