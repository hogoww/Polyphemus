naming
nameForVersion: aNumber imageName: anImageName
	| prefix |
	prefix := (anImageName includesSubstring: 'minimal') 
		ifTrue: [ 'minimal' ] 
		ifFalse: [ 'clean' ].
	^ prefix , 'P' , aNumber asString.