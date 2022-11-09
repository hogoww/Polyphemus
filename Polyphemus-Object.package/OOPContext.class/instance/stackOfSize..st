debugger
stackOfSize: limit

	| stack context |
	stack := OrderedCollection new.
	stack addLast: (context := self).
	[ (context := context sender) ~~ nil and: [ stack size < limit ] ] 
		whileTrue: [ stack addLast: context ].
	^ stack