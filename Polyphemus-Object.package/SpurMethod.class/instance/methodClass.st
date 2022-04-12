accessing
methodClass
	
	| methodClassBinding |
	methodClassBinding := self lastLiteral.
	^ (methodClassBinding slotAt: 2) vmPrintOop