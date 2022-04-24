test-color
testChangeColorsBackToDefault
	
	| selectedOop |
	selectedOop := self newZeroSizedObject.
	self updateSpaces.
	
	newSpace allReferencersOf: (newSpace oopForAddress: selectedOop) model.
	
	newSpace updateColorProviderTo: newSpace defaultColorProvider.