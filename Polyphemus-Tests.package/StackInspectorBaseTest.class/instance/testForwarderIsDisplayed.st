test-displaying
testForwarderIsDisplayed
	
	| obj |	
	"Create a forwarder"
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	self updateSpaces.
	
	self assert: newSpace spaceSize equals: 1.
	self assert: (newSpace oopForAddress: obj) model isForwarderOop.