test-color
testPinnedObjectIsColoredProperly
	
	| obj |	
	"Create a forwarder"
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	self updateSpaces.

	self assert: (oldSpace oopWithAddress: (memory followForwarded: obj)) paint equals: oldSpace colorProvider pinnedOopColor.