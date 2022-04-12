accessing
selector
	| selectorLiteral |
	selectorLiteral := self penultimateLiteral.
	(selectorLiteral basicClass asSpurClass className
		= 'AdditionalMethodState')
		ifFalse: [ ^ self image printByteSymbol: selectorLiteral ]
		ifTrue: [ | selectorInAdditional |
			selectorInAdditional := selectorLiteral
				slotAt: 2. "Supossed to be the selector"
			^ self image printByteSymbol: selectorInAdditional ]