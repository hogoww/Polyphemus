test-displaying
testPinnedObjectIsDisplayed
	
	| obj |	
	"Create a forwarder"
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	stackInspector updateInspector.
	
	self assert: stackInspector oldSpaceNodes last model equals: (memory followForwarded: obj).