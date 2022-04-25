printing
isClassTablePage
	| classTable |
	classTable := self class newFor: memory classTableRootObj image: image.
	classTable allSlots doWithIndex: [ :s :i | s address = address ifTrue: [ ^ i ] ].
	^ 0