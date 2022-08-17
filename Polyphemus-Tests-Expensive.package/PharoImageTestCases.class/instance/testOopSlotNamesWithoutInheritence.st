running
testOopSlotNamesWithoutInheritence
	| pointClass |
	pointClass := reifiedMemory reifiedClassTable allClassesOop detect: [ :o | o oopClassName = #Point ].
	self assert: pointClass oopSlotNames first printString equals: #x.
	self assert: pointClass oopSlotNames second printString equals: #y