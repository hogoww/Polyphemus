running
testUpdatingStatsUpdatesStatsList
	self newZeroSizedObject.
	self updateSpaces.
	self assert: newSpace legend statList size equals: 1