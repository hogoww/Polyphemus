accessing
oopSelector
	"ifTrue branch to be tested"
	| selectorLiteral |
	selectorLiteral := self penultimateLiteral.
	(selectorLiteral oopClassName = 'AdditionalMethodState')
			ifFalse: [ ^ selectorLiteral ]
			ifTrue: [ ^ selectorLiteral reifiedSlotAt: 2. "Supossed to be the selector" ]