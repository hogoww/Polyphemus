helper
colorForOop: anOop

	"detect: [:dictionary | dictionary includes: anOop ] ifFound: [:each | each ] ifNone: [ self defaultColor ]"

	colorOopDictionary associationsDo: [ :association | 
		(association key includes: anOop) ifTrue: [ ^ association value ] ].
	^ self defaultColor