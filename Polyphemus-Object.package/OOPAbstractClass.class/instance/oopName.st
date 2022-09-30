printing
oopName
	| className |
	className := self classNameObject.
	className isStringOop ifFalse: [ ^ 'Invalid ClassName'].
	^ className printString