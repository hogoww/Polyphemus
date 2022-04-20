initialization
initializePresenters

	memorySpace := self instantiate: SpRoassalPresenter.
	memorySpace script: [ :canvas | self buildMemorySpaceIn: canvas ].