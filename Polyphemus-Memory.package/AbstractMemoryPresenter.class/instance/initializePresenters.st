initialization
initializePresenters

	memorySpace := self instantiate: SpRoassalPresenter.
	memorySpace script: [ :canvas | 
		scopedOop ifNotNil: [ self buildMemorySpaceIn: canvas ]].