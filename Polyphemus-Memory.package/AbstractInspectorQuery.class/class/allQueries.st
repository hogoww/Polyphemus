as yet unclassified
allQueries
	^ (self allSubclasses 
		reject: [ : aClass | aClass isAbstract ]
		thenCollect: [ :aClass | aClass queryName -> aClass new ]) asDictionary