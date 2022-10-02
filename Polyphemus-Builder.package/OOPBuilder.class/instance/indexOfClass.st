indexes
indexOfClass
	| classOop |
	"oopClassIndex = self defaultClassIndex ifFalse: [ ^ oopClassIndex  ]."
	classOop := memory classAtIndex: oopClassIndex.
	classOop = memory nilObject ifFalse: [ self addDefaultRegularClass ].
	^ oopClassIndex