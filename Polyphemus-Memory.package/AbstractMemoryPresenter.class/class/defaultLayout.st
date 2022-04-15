layout
defaultLayout

	^ SpBoxLayout newTopToBottom
		add:
			(SpBoxLayout newLeftToRight
				add: #memorySpace;
				add: #legend "expand: false";
				yourself);
		add: #queryTextInput expand: false;
		yourself
