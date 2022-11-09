debugger
sourceCode

	| trailer |
	trailer := self trailer.
	trailer sourceCode ifNotNil: [ :code | ^ code ].
	trailer hasSourcePointer ifFalse: [ ^ self codeForNoSource ].

	^ self getSourceFromFile ifEmpty: [ self codeForNoSource ]