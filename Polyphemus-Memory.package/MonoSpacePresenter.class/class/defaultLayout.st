layout
defaultLayout

	^ SpBoxLayout newTopToBottom
		add:
			(SpBoxLayout newLeftToRight
				add: #memoryPresenter;
				add: #legend "expand: false";
				yourself);
		add: #queryWidget height: 35;
		yourself
