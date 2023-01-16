building
buildWithLayout: aSpecLayout
	| res |
	res := super buildWithLayout: aSpecLayout.
	memoryPresenter signalUpdate.
	^ res