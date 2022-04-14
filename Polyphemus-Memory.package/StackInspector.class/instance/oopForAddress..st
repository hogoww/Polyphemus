searching
oopForAddress: anOop 
	newSpace canvas nodes detect: [ :n | n model = anOop value ] ifFound: [ :n | ^ n ].
	oldSpace canvas nodes detect: [ :n | n model = anOop value ] ifFound: [ :n | ^ n ].
	self error