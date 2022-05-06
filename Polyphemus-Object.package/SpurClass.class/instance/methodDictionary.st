accessing
methodDictionary

	^ SpurMethodDictionary on: (self reifiedSlotAt: self slotIndexForMethodDictionary) address memory: self image