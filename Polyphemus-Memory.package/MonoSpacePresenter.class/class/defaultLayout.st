layout
defaultLayout

	^ SpBoxLayout newTopToBottom
		add:
			(SpPanedLayout newLeftToRight
				add: #memoryPresenter;
				add: #legend;
				positionOfSlider: 0.8;
				yourself);
		add: #queryWidget height: 35;
		yourself
