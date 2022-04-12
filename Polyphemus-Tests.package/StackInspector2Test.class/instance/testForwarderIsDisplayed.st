test-displaying
testForwarderIsDisplayed
	
	| obj |	
	"Create a forwarder"
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	stackInspector updateInspector.
	
	self assert: stackInspector newSpaceNodes size equals: 1.
	self assert: (memory isUnambiguouslyForwarder: stackInspector newSpaceNodes anyOne model).