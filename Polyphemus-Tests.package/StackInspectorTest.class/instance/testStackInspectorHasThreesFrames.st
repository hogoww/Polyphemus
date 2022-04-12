running
testStackInspectorHasThreesFrames
	<expectedFailures> 
	"as long as the stack and temps are failing, this one will fail as well"
	self assert: stackInspector stack items size equals: 3 * 9