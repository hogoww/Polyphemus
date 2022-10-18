images
pathToPharo: aNumber
	| path |
	
	path := self pathToImageNamed: 'cleanP' , aNumber asString , '.image'.
	path asFileReference 
		ifExists: [ ^ path ]
		ifAbsent: [ 
			(self getImageForPharo: aNumber) = 0
				ifFalse: [ self error: 'There is an issue with the script downloading images' ].
			^ self pathToPharo: aNumber ].