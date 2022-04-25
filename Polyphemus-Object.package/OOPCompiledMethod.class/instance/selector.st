accessing
selector
	| selectorLiteral |
	selectorLiteral := self penultimateLiteral.
	(selectorLiteral oopClass className
		includes: 'AdditionalMethodState')
		ifFalse: [ ^ selectorLiteral ]
		ifTrue: [ 
			^ selectorLiteral slotAt: 2. "Supossed to be the selector" ]