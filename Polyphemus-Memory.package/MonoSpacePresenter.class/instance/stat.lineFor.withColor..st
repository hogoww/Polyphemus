as yet unclassified
stat: aNumber lineFor: aString withColor: aColor

	| composite |
	composite := RSComposite new.
	composite add: (RSLabel new text: aNumber asString; yourself).
	composite add: (RSBox new color: aColor).
	composite add: (RSLabel new text: aString; yourself).
	RSHorizontalLineLayout new
		gapSize: 1;
		on: composite nodes.
	^composite