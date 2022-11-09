accessing
oopSize

	| oop oopFormat totalLength fixedFields |
	oop := self address.
	oopFormat := self oopFormat.
	totalLength := memory lengthOf: oop format: oopFormat.
	fixedFields := memory
		               fixedFieldsOf: oop
		               format: oopFormat
		               length: totalLength.

	^totalLength - fixedFields