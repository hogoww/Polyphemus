finding
methodNamed: aString 
	^ self reifiedMethods detect: [ :m | m selector asString = aString ]