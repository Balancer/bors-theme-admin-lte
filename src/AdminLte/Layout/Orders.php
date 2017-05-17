<?php

namespace B2\Theme\AdminLte\Layout;

class Orders extends \B2\Layout\ItemsTable
{
	function body_data()
	{
		return array_merge(parent::body_data(), [
			'box_type' => 'box-'.$this->args('color_type', 'default'),
		]);
	}
}
