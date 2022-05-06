printing
isClassTablePage
	| classTable |
	memory nilObject = address ifTrue: [ ^ 0].
	classTable := self reifyOop: memory classTableRootObj.
	classTable allSlots doWithIndex: [ :s :i | s address = address ifTrue: [ ^ i ] ].
	^ 0