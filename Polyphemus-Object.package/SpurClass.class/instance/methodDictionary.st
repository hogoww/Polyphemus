accessing
methodDictionary

	^ SpurMethodDictionary on: (self reifiedSlotAt: self slotIndexForMethodDictionary) address image: self image