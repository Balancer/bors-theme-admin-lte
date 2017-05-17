<?php

namespace B2\Theme\AdminLte\Layout;

class UsersBox extends \B2\Layout\Module
{
	function body_data()
	{
		return array_merge(parent::body_data(), [
			'box_type' => 'box-'.$this->args('color_type', 'default'),
		]);
	}
}
