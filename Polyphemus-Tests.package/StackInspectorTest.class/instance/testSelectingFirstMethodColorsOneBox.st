running
testSelectingFirstMethodColorsOneBox
	"as long as the stack and temps are failing, this one will fail as well"
	stackInspector stack selectIndex: 2.
	self assert: stackInspector coloredModels size equals: 1