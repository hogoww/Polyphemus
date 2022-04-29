execution
executeCode: aBlock on: aMemoryPresenter
	| selection |
	selection := (aMemoryPresenter allNodes collect: aBlock ).
	selection inspect