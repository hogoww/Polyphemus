searching
oopWithAddress: anOop 
	memorySpace canvas nodes detect: [ :n | n model = anOop value ] ifFound: [ :n | ^ n ].
	^ nil