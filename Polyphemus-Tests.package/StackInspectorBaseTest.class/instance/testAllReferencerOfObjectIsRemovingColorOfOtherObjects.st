test-allReferencers
testAllReferencerOfObjectIsRemovingColorOfOtherObjects
	
	| nonSelectedObject selectedOop nonSelectedOop |
	selectedOop := self newZeroSizedObject.
	nonSelectedOop := self newZeroSizedObject.
	
	self updateSpaces.
	newSpace allReferencersOf: (newSpace oopForAddress: selectedOop) model.
	nonSelectedObject := newSpace oopForAddress: nonSelectedOop.

	self assert: nonSelectedObject paint equals: newSpace colorProvider colorForNonSelectedObject