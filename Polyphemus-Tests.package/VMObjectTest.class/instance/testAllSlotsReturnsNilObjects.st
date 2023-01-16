initialization
testAllSlotsReturnsNilObjects
	| slots |
	slots := self testedObject allReifiedSlots.
	self assert: slots size equals: 3.

	slots do: [ :aSlot |
		self assert: aSlot isNilOop
		 ]