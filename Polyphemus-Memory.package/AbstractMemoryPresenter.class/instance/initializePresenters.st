showing
initializePresenters

	| composite composite2 |
	memorySpace := self instantiate: SpRoassalPresenter.

	queryTextInput := self instantiate: SpTextInputFieldPresenter.
	queryTextInput text: 'Enter your query ...'.
	
	composite := RSComposite new.
	composite add: (RSLabel new text: '42'; yourself).
	composite add: RSBox new.
	composite add: (RSLabel new text: 'classes'; yourself).
	RSHorizontalLineLayout new
		gapSize: 1;
		on: composite nodes.
		
	composite2 := RSComposite new.
	composite2 add: (RSLabel new text: '42'; yourself).
	composite2 add: RSBox new.
	composite2 add: (RSLabel new text: 'classes'; yourself).
	RSHorizontalLineLayout new
		gapSize: 1;
		on: composite2 nodes.
		
	legend := self instantiate: SpRoassalPresenter.
	legend canvas add: composite.
	legend canvas add: composite2.
	RSVerticalLineLayout new
		gapSize: 3;
		on: legend canvas nodes.
	