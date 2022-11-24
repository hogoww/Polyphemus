replacing
replaceReferenceTo: oopToReplace by: oopReplacement

	self allSlots doWithIndex: [ :o :index |
		o = oopToReplace ifTrue: [ self slotAt: index put: oopReplacement ] ]