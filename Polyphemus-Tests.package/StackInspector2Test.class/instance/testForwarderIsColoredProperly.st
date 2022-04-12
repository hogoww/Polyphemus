test-color
testForwarderIsColoredProperly
	
	| obj |	
	"Create a forwarder"
	obj := self newZeroSizedObject.
	memory pinObject: obj.
	
	self updateSpaces.
	
	self assert: (newSpace oopWithAddress: obj) paint equals: oldSpace colorProvider forwarderOopColor.