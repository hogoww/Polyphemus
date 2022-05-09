initialization
initializeMethodsPresenter

	methods := self newList.
	methods
		display: [ :method | method selector ];
		sortingBlock: [ :a :b | a selector < b selector ]