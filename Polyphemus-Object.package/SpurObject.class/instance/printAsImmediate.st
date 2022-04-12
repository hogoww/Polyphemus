printing
printAsImmediate
	self isCharacter ifTrue: [ ^ self printAsCharacter ].
	"default case is a smallInteger"
	^ self printAsInteger