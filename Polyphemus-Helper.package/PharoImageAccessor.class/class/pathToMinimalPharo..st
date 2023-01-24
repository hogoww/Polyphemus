pathFinding
pathToMinimalPharo: aNumber
	| path |
	
	path := self pathToImageNamed: (self nameForMinimalPharo: aNumber) , '.image'.
	path asFileReference 
		ifExists: [ ^ path ]
		ifAbsent: [ 
			self getMinimalImageForPharo: aNumber.
			^ self pathToMinimalPharo: aNumber ].