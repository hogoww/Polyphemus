coloring
colorForDepth: aDepth 

	aDepth = 0 ifTrue: [ ^ self colorForNonSelectedObject ].
	aDepth = 1 ifTrue: [ ^ self colorDepth1Object ].
	aDepth = 2 ifTrue: [ ^ self colorDepth2Object ].
	aDepth = 3 ifTrue: [ ^ self colorDepth3Object ].
	aDepth = 4 ifTrue: [ ^ self colorDepth4Object ].
	aDepth > 4 ifTrue: [ ^ self colorDeepDepthObject ].
	"The difference is not visible enough with this code and for now we don't have that many depth > 4.
	It is also less compute and easier for description
	aDepth - 1 timesRepeat: [ color lighter lighter lighter lighter ]. "
	 ^ self colorForNonSelectedObject