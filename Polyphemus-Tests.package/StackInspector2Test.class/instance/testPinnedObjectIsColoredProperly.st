test-color
testPinnedObjectIsColoredProperly
	
	| obj |	
	"Create a forwarder"
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	stackInspector updateInspector.

	self assert: stackInspector oldSpaceNodes last color equals: stackInspector colorProvider pinnedOopColor.