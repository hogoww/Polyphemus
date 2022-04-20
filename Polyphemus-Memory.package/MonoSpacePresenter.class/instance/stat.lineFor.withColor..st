stats
stat: aNumber lineFor: aString withColor: aColor

	| composite |
	composite := RSComposite new.
	
	composite add: (RSLabel new text: aNumber asString; fontSize: 12 ; yourself).
	composite add: (RSBox new color: aColor).
	composite add: (RSLabel new text: aString; fontSize: 12 ; yourself).
	
	RSHorizontalLineLayout new
	gapSize: 2;
	on: composite nodes.
	composite adjustToChildren.
	^composite