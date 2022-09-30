class
oopClassName

	| class |
	class := self oopClass.
	class isNotNilOop
		ifTrue: [ ^ class oopName ]
		ifFalse: [ ^ nil ]