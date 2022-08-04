visiting
visitSlotsOf: anOopObject

	anOopObject allSlots do: [ :aSlot | self visitObject: aSlot ]