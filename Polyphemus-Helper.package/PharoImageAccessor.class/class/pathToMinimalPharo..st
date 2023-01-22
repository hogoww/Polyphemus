pathFinding
pathToMinimalPharo: aNumber
	| path |
	
	path := self pathToImageNamed: 'minimalP' , aNumber asString , '.image'.
	path asFileReference 
		ifExists: [ ^ path ]
		ifAbsent: [ 
			self getMinimalImageForPharo: aNumber.
			^ self pathToMinimalPharo: aNumber ].