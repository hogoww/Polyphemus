private
visitSlotsOf: anOopObject

	^ anOopObject allReifiedSlots do: [ :aSlot | self visitObject: aSlot ]