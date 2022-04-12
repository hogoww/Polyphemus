test-color
testForwarderIsColoredProperly
	
	| obj |	
	"Create a forwarder"
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	stackInspector updateInspector.
	
	self assert: (stackInspector oopWithAddress: obj) paint equals: stackInspector colorProvider forwarderOopColor.