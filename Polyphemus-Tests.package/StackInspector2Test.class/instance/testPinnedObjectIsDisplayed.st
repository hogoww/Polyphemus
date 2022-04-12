test-displaying
testPinnedObjectIsDisplayed
	
	| obj |	
	"Create a forwarder"
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	self updateSpaces.
	
	self assert: (oldSpace oopWithAddress: (memory followForwarded: obj)) model equals: (memory followForwarded: obj).