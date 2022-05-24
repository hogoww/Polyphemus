accessing
methodClass
	
	| methodClassBinding |
	methodClassBinding := self lastLiteral.
	"Last literal is an Association with the value being the methodClass"
	^ methodClassBinding reifiedSlotAt: 2