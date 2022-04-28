initialization
testAllSlotsReturnsNilObjects
	| slots |
	slots := nonIndexableLayoutObject allSlots.
	self assert: slots size equals: 3.

	slots do: [ :aSlot |
		self assert: aSlot isNilOop
		 ]