updating
updateMemorySpace
	self updateScope.
	memorySpace refresh.
	statProvider ifNotNil: [statProvider  updateStatsAndLegend].