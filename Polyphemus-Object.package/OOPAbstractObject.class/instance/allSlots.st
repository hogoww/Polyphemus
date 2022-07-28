accessing-slots
allSlots 
	^ (1 to: self numSlots) 
		collect: [ :anIndex | [self reifiedSlotAt: anIndex] onErrorDo: [ "I am unsure of what we should do for now I will juste anwser nilObject"memory objectAt: memory nilObject] ]