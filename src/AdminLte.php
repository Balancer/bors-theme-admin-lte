<?php

namespace B2\Theme;

class AdminLte extends \B2\Theme\Bootstrap3
{
	function _template_class_def() { return \B2\Template\Smarty3::class; }
	function _layout_class_def() { return \B2\Theme\AdminLte\Layout::class; }

	var $__skip_pure_bootstrap_load = true;

	function pre_show()
	{
		\B2\FontAwesome::load();
		\B2\Ionicons::load();

		\B2\jQuery::load();

		if(empty(\bors::$bower_asset_packages['bower-asset/bootstrap']))
		{
			bors_use('//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js');
		}
		else
		{
			$asset = \B2\cfg('bower-asset.path', '/bower-asset').'/bootstrap/dist';
			bors_use($asset.'/js/bootstrap.min.js');
		}

		bors_use('//maxcdn.bootstrapcdn.com/js/ie10-viewport-bug-workaround.js');

		return parent::pre_show();
	}

	function page_data()
	{
		$view = $this->id();
		$data = [];
		if($user_menu_class = $view->get('user_menu_class'))
			$data['user_menu_html'] = call_user_func([$user_menu_class, 'mod_html']);

		$data['q'] = bors()->request()->data('q');

		return array_merge(parent::page_data(), $data);
	}
}
