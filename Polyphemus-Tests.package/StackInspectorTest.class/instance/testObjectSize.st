running
testObjectSize
	| counter |
	self halt.
	counter := 0.
	memory allObjectsDo: [ :o| counter := counter + 1 ].
	self halt.