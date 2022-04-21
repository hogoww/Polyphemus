layout
defaultLayout
	^ SpBoxLayout newLeftToRight
		add: #querySelector expand: false;
		add: #queryInput;
		yourself