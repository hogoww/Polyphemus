finding
methodNamed: aString 
	^ self reifiedMethods detect: [ :m | m oopSelector asString = aString ]