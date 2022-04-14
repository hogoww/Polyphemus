test-displaying
testPinnedObjectIsDisplayed
	
	| obj |	
	"Create a forwarder"
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	self updateSpaces.
	
	self assert: (oldSpace oopForAddress: (memory followForwarded: obj)) model equals: (memory followForwarded: obj).