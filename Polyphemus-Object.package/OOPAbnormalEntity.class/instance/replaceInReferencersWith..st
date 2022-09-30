as yet unclassified
replaceInReferencersWith: anOop

	| anIndex |
	self flag:#TheoNeedToFinish.
	anOop slotAt: anIndex put: memory reifiedNilObject.