<?php

namespace B2\Theme;

class AdminLte extends \B2\Theme\Bootstrap3
{
	function _template_class_def() { return \B2\Template\Smarty3::class; }
	function _layout_class() { return \B2\Theme\AdminLte\Layout::class; }
}
