debugger
executedPC

	"pc manipulation certainly will fail or must be redone"

	pc == self startpc ifTrue: [ ^ self startpc ].

	^ self isDead
		  ifTrue: [ self endPC - 1 ]
		  ifFalse: [ pc - 1 ]