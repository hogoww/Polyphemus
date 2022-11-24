accessing-classes
oopClassNamed: aString 
	self classesDo: [ :o| o oopName = aString ifTrue: [ ^ o ] ].
	^ memory reifiedNilObject