running
testQuerySignalsItsQueryIsReady
	"If the Annoucement is not fired, the test fails"
	| pass |
	pass := false.
	widget whenUpdatedDo: [ :aPresenter | pass := true ].
		
	widget queryInput adapter keyDown: Character cr
		shift: false 
		meta: false
		control: false
		option: false.

	self assert: pass