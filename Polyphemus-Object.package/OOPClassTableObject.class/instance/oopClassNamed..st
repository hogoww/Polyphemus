accessing-classes
oopClassNamed: aString 
	self classOopsDo: [ :o| o oopName = aString ifTrue: [ ^ o ] ].
	^ memory reifiedNilObject