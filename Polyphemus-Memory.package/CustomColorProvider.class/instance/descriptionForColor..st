description
descriptionForColor: aColor

	^ colorDescriptionDictionary detect: [:each | each key = aColor ] ifFound: [:each | each value ] ifNone: [ self defaultDescription ]