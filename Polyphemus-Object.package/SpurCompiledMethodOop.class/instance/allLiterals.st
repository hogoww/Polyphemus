literals
allLiterals 

	^ (2 to: self numberOfLiterals + 1) collect: [ :index | self slotAt: index ]