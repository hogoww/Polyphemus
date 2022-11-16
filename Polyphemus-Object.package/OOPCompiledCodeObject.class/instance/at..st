accessing
at: anIndex

	"For now I don't try to understand but i am sure this can be more clean"

	| oop oopFormat totalLength fixedFields recalculatedIndex |
	oop := self address.
	oopFormat := self oopFormat.
	totalLength := memory lengthOf: oop format: oopFormat.
	fixedFields := memory
		               fixedFieldsOf: oop
		               format: oopFormat
		               length: totalLength.
	recalculatedIndex := anIndex + fixedFields.
	^ memory fetchByte: recalculatedIndex ofObject: address