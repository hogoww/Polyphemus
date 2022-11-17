pathFinding
pathToMinimalPharo: aNumber
	| path |
	
	path := self pathToImageNamed: 'minimalP' , aNumber asString , '.image'.
	path asFileReference 
		ifExists: [ ^ path ]
		ifAbsent: [ 
			self getImageForPharo: aNumber.
			^ self pathToPharo: aNumber ].