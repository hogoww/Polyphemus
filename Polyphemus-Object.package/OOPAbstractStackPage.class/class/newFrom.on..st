instance creation
newFrom: aStackPage on: aMemory

	aStackPage isFree
		ifTrue: [ ^ OOPFreeStackPage newFrom: aStackPage on: aMemory ]
		ifFalse: [ ^ OOPStackPage newFrom: aStackPage on: aMemory ]