helper
colorForOop: anOop
	^ colorDictionary detect: [:each | each value includes: anOop ] ifFound: [:each | each key ] ifNone: [ self defaultColor ]