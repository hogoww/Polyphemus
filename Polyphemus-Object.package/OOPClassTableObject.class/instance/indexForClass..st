accessing-classes
indexForClass: aClassOop 
	classTablePages do: [ :aClassTablePage | | index |
		index := aClassTablePage indexForClass: aClassOop.
		index = 0 ifFalse: [ ^ index ]
		].
	^ 0