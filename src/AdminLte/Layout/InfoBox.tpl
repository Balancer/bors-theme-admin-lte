<div class="col-md-3 col-sm-6 col-xs-12">
	<div class="info-box">
		<a href="{$url}"><span class="info-box-icon {$box_color}"><i class="fa fa-{$fa}"></i></span></a>

		<div class="info-box-content">
			<a href="{$url}">
				<span class="info-box-text">{$title}</span>
				<span class="info-box-number">{$number}</span>
			</a>

		</div>
	</div>
{if $actions}
	{foreach $actions as $title => $a}
		<a href="{$a.url}" class="btn btn-default">{if $x.fa}<i class="fa fa-{$a.fa}"></i>&nbsp;{/if}{$title}</a>
	{/foreach}
{/if}
</div>
