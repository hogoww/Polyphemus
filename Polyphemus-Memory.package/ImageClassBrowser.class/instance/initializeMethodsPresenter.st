initialization
initializeMethodsPresenter
	methods := self newList.
	methods
		display: [ :method | method oopSelector ];
		sortingBlock: [ :a :b | a oopSelector asString < b oopSelector asString ];
		contextMenu: (self contextMenuForItems: methods)
	