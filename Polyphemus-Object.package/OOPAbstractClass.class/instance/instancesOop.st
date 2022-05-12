query
instancesOop
	"Untested"
	self flag: #untested.
	^ memory objects collect: [ :anOop |
		anOop oopClass = self ].
	