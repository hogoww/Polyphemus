replacing
replaceReferenceTo: oopToReplace by: oopReplacement

	self allReifiedSlots doWithIndex: [ :o :index |
		o = oopToReplace ifTrue: [ self slotAt: index put: oopReplacement ] ]