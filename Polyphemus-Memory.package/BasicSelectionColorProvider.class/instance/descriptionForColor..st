description
descriptionForColor: aColor

	aColor = self colorForNonSelectedObject ifTrue: [ ^ 'non referencing object'  ].
	aColor = self colorForSelectedObject  ifTrue: [ ^ 'referencing object'  ].
	^self defaultDescription