layout
defaultLayout
	^ SpBoxLayout newLeftToRight
		add: #kindOfQueryList expand: false;
		add: #queryInput;
		yourself