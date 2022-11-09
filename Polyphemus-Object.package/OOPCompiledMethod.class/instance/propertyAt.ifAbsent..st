accessing
propertyAt: aString ifAbsent: aFullBlockClosure

	| propertiesOrSelector |
	^ (propertiesOrSelector := self penultimateLiteral)
		  isMethodProperties
		  ifTrue: [ 
			  propertiesOrSelector
				  propertyAt: aString
				  ifAbsent: aFullBlockClosure ]
		  ifFalse: [ aFullBlockClosure value ]