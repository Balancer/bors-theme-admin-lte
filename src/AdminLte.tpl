<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>{$this->browser_title()}{object_property($this->app(), 'browser_title_suffix')}</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="/bower-asset/admin-lte/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/bower-asset/admin-lte/dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="/bower-asset/admin-lte/dist/css/skins/_all-skins.min.css">
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
<style>
body {
	font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
}

form > fieldset > div > label:first-child {
	margin-top: 8px;
}

form > fieldset > div > label:not(:first-child) {
	font-weight: normal;
}

form input.btn, a.btn {
	margin-top: 8px;
	margin-bottom: 8px;
}

.content-header>h1 {
	margin-top: 10px;
	font-size: 24pt;
}

h2 {
	margin: 0 0 5px 0;
	font-size: 20pt;
}

.content-header>.breadcrumb {
	padding: 4px 5px;
	float: none;
	top: 0;
	left: 11px;
}

/* Custom styles to disable animation temporarily (inlined for show) */
/* https://github.com/almasaeed2010/AdminLTE/issues/896#issuecomment-175278510 */
/* Probably doesn't need all these prefixes but oh well */
.disable-animations, .disable-animations * {
  /* CSS transitions */
  -o-transition-property: none !important;
  -moz-transition-property: none !important;
  -webkit-transition-property: none !important;
  transition-property: none !important;
  /* CSS transforms */
  -o-transform: none !important;
  -moz-transform: none !important;
  -webkit-transform: none !important;
  transform: none !important;
  /* CSS animations */
  -webkit-animation: none !important;
  -moz-animation: none !important;
  -o-animation: none !important;
  animation: none !important;
}

dd {
	margin-bottom: 8px;
}

aside.main-sidebar section ul li a i {
	padding-right: 4px;
}

.main-header .sidebar-toggle {
	font-family: Font Awesome\ 5 Free, fontAwesome;
	font-weight: 900;
}

</style>

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
<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">
	<header class="main-header">
		<!-- Logo -->
		<a href="{object_property($this->app(), 'url')}" class="logo">
			<!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><i class="fa fa-tasks"></i></span>
			<!-- logo for regular state and mobile devices -->
			<span class="logo-lg">{object_property($this->app(), 'title')}</span>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>

			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">

					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu">
						{if $me}
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img src="https://www.gravatar.com/avatar/{md5($me->email())}" class="user-image" alt="User Image">
							<span class="hidden-xs">{$me->title()}</span>
						</a>

						<ul class="dropdown-menu">
							{$user_menu_html}
						</ul>
						{/if}
					</li>
{*
					<!-- Control Sidebar Toggle Button -->
					<li>
						<a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
					</li>
*}
				</ul>
			</div>
		</nav>
	</header>

	<!-- =============================================== -->

	<!-- Left side column. contains the sidebar -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
{if $this->get('search_link')}
			<!-- search form -->
			<form action="{$this->search_link()}" method="get" class="sidebar-form">
				<div class="input-group">
					<input type="text" name="q" class="form-control" placeholder="Поиск..." value="{$q}">
							<span class="input-group-btn">
								<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
								</button>
							</span>
				</div>
			</form>
			<!-- /.search form -->
{/if}
{if $nav=$this->get('navbar_class')}
	<!-- navbar class {$nav} -->
	{$nav::mod_html()}
{else}
	<!-- navbar from layout -->
	{$this->layout()->navbar()}
{/if}
		</section>
		<!-- /.sidebar -->
	</aside>

	<!-- =============================================== -->

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
{$this->page_title()}
{if $x=$this->get('page_subtitle')}
				<small>{$x}</small>
{/if}
			</h1>

{$this->layout()->breadcrumbs()}
		</section>

		<!-- Main content -->
		<section class="content">

{if $error_message}<div class="alert alert-danger"   >{$error_message|markdown}</div>{/if}
{if $notice_message}<div class="alert alert-warning">{$notice_message|markdown}</div>{/if}
{if $success_message}<div class="alert alert-success" >{$success_message|markdown}</div>{/if}

{block name="body"}
{$body}
{/block}

		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

{*
	<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.3.8
		</div>
		<strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
		reserved.
	</footer>
*}

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>

			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Home tab content -->
			<div class="tab-pane" id="control-sidebar-home-tab">
				<h3 class="control-sidebar-heading">Recent Activity</h3>
				<ul class="control-sidebar-menu">
					<li>
						<a href="javascript:void(0)">
							<i class="menu-icon fa fa-birthday-cake bg-red"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

								<p>Will be 23 on April 24th</p>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<i class="menu-icon fa fa-user bg-yellow"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

								<p>New phone +1(800)555-1234</p>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

								<p>nora@example.com</p>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<i class="menu-icon fa fa-file-code-o bg-green"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

								<p>Execution time 5 seconds</p>
							</div>
						</a>
					</li>
				</ul>
				<!-- /.control-sidebar-menu -->

				<h3 class="control-sidebar-heading">Tasks Progress</h3>
				<ul class="control-sidebar-menu">
					<li>
						<a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Custom Template Design
								<span class="label label-danger pull-right">70%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Update Resume
								<span class="label label-success pull-right">95%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-success" style="width: 95%"></div>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Laravel Integration
								<span class="label label-warning pull-right">50%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-warning" style="width: 50%"></div>
							</div>
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Back End Framework
								<span class="label label-primary pull-right">68%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-primary" style="width: 68%"></div>
							</div>
						</a>
					</li>
				</ul>
				<!-- /.control-sidebar-menu -->

			</div>
			<!-- /.tab-pane -->
			<!-- Stats tab content -->
			<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
			<!-- /.tab-pane -->
			<!-- Settings tab content -->
			<div class="tab-pane" id="control-sidebar-settings-tab">
				<form method="post">
					<h3 class="control-sidebar-heading">General Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading">
							Report panel usage
							<input type="checkbox" class="pull-right" checked>
						</label>

						<p>
							Some information about this general settings option
						</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading">
							Allow mail redirect
							<input type="checkbox" class="pull-right" checked>
						</label>

						<p>
							Other sets of options are available
						</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading">
							Expose author name in posts
							<input type="checkbox" class="pull-right" checked>
						</label>

						<p>
							Allow the user to show his name in blog posts
						</p>
					</div>
					<!-- /.form-group -->

					<h3 class="control-sidebar-heading">Chat Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading">
							Show me as online
							<input type="checkbox" class="pull-right" checked>
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading">
							Turn off notifications
							<input type="checkbox" class="pull-right">
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading">
							Delete chat history
							<a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
						</label>
					</div>
					<!-- /.form-group -->
				</form>
			</div>
			<!-- /.tab-pane -->
		</div>
	</aside>
	<!-- /.control-sidebar -->
	<!-- Add the sidebar's background. This div must be placed
			 immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

{*
<!-- jQuery 2.2.3 -->
<script src="/bower-asset/admin-lte/plugins/jQuery/jquery-2.2.3.min.js"></script>
*}

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

{foreach $js_include_post as $s}
<script src="{$s}"></script>
{/foreach}
{$jquery_document_ready=bors_page::template_data('jquery_document_ready')}
{if $javascript_post || $jquery_document_ready}
<script><!--
{foreach $javascript_post as $s}
{$s}
{/foreach}
{if $jquery_document_ready}
$(document).ready(function(){literal}{{/literal}
{foreach $jquery_document_ready as $s}
{$s}
{/foreach}
})
{/if}
--></script>
{/if}

<!-- SlimScroll -->
<script src="/bower-asset/admin-lte/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/bower-asset/admin-lte/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/bower-asset/admin-lte/dist/js/app.min.js"></script>
{*
<!-- AdminLTE for demo purposes -->
<script src="/bower-asset/admin-lte/dist/js/demo.js"></script>
*}

<!-- Custom scripts loaded AFTER AdminLTE JavaScript (inlined for show) -->
<script>
$(function ($) {
  var $body = $('body');
  // On click, capture state and save it in localStorage
  $($.AdminLTE.options.sidebarToggleSelector).click(function () {
    localStorage.setItem('sidebar', $body.hasClass('sidebar-collapse') ? 1 : 0);
  });

  // On ready, read the set state and collapse if needed
  if (localStorage.getItem('sidebar') === '0') {
    $body.addClass('disable-animations sidebar-collapse');
    requestAnimationFrame(function () {
      $body.removeClass('disable-animations');
    });
  }
});
</script>

</body>
</html>
