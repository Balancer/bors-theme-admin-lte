<?php

namespace B2\Theme\AdminLte\Layout;

class Navbar  extends \B2\Layout\Bootstrap3\Navbar
{
	function body_data()
	{
		return array_merge(parent::body_data(), [
			'ul_css' => 'sidebar-menu',
			'li_tree_css' => 'treeview',
			'tree_ul_css' => 'treeview-menu',
			'tree_li_css' => '',
		]);
	}
}
