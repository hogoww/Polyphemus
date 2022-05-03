printing
isClassTablePage
	| classTable |
	classTable := self reifyOop: memory classTableRootObj.
	classTable allSlots doWithIndex: [ :s :i | s address = address ifTrue: [ ^ i ] ].
	^ 0