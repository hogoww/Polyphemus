searching
oopForAddress: anOop
	memorySpace canvas nodes detect: [ :n | n model address = anOop value ] ifFound: [ :n | ^ n ].
	^ nil