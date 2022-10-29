build
checkFormat
	oopFormat = 0 ifTrue: [ OOPInvalidFormat signal: 'Cannot instanciate 0 sized object format.' ].
	(#(6 8) includes: oopFormat) ifTrue: [ OOPInvalidFormat signal: 'Cannot instanciate unused format.' ].
	oopFormat = 7 ifTrue: [ OOPInvalidFormat signal: 'Cannot instanciate immediate format.' ].
	oopFormat > 23 ifTrue: [ OOPInvalidFormat signal: 'You should use the Method builder to build a method' ].