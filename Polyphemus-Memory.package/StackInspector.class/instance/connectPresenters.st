initialization
connectPresenters

	stack whenSelectionChangedDo: [ :selection |
		selection isEmpty ifFalse: [ self selectFramePart: selection selectedItem ] ].