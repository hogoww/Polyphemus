tests
testOopSlotNamesWithoutInheritence
	| pointClass |
	pointClass := reifiedMemory reifiedClassTable allClassesOop detect: [ :o | o oopClassName = #PCPoint ].
	self assert: pointClass oopSlotsNames first printString equals: #x.
	self assert: pointClass oopSlotsNames second printString equals: #y