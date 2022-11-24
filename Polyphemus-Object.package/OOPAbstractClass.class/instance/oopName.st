printing
oopName
	| className |
	className := [ self classNameObject ] on: Error do: [ ^ 'Invalid ClassName'].
	className isStringOop ifFalse: [ ^ 'Invalid ClassName'].
	^ className printString