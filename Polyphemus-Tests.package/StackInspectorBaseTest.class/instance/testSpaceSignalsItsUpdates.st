test-event
testSpaceSignalsItsUpdates
	"If the Annoucement is not fired, the test fails"
	| pass |
	pass := false.
	newSpace whenUpdatedDo: [ :aPresenter | pass := true ].
		
	newSpace updateMemorySpace.

	self assert: pass