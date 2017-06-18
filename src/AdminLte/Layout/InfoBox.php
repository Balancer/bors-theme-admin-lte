<?php

namespace B2\Theme\AdminLte\Layout;

class InfoBox extends \B2\Layout\Module
{
	function body_data()
	{
		return array_merge(parent::body_data(), [
			'box_color' => 'bg-'.$this->args('color', 'gray'),
		]);
	}
}
