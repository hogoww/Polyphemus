pathFinding
pathToPharo: aNumber
	| path |
	
	path := self pathToImageNamed: 'cleanP' , aNumber asString , '.image'.
	path asFileReference 
		ifExists: [ ^ path ]
		ifAbsent: [ 
			self getImageForPharo: aNumber.
			^ self pathToPharo: aNumber ].