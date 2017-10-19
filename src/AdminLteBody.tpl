<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>{$this->browser_title()}</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="/bower-asset/admin-lte/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<link rel="stylesheet" href="/bower-asset/admin-lte/dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="/bower-asset/admin-lte/dist/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="/bower-asset/admin-lte/plugins/iCheck/square/blue.css">

	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

{foreach $css_list as $css}
	<link rel="stylesheet" href="{$css}" />
{/foreach}

{if $style}
<style media="all"><!--
{foreach $style as $s}
{$s}
{/foreach}
--></style>
{/if}

</head>
<body class="{$this->body_css()}">

{if $error_message}<div class="alert alert-error"   >{$error_message}</div>{/if}
{if $notice_message}<div class="alert alert-warning">{$notice_message}</div>{/if}
{if $success_message}<div class="alert alert-success" >{$success_message}</div>{/if}

{$this->body()}

{if $js_include}
	{foreach $js_include as $s}
	<script src="{$s}"></script>
	{/foreach}
{/if}
{if $javascript}
	<script><!--
{foreach $javascript as $s}
{$s}
{/foreach}
--></script>
{/if}

<script src="/bower-asset/admin-lte/bootstrap/js/bootstrap.min.js"></script>
<script src="/bower-asset/admin-lte/plugins/iCheck/icheck.min.js"></script>
<script>
	$(function () {
		$('input').iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue',
			increaseArea: '20%' // optional
		});
	});
</script>
</body>
</html>
