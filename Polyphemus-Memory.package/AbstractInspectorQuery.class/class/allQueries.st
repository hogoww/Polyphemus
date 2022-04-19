as yet unclassified
allQueries
	^ self allSubclasses collect: [ :aClass | aClass queryName -> aClass new ] into: Dictionary new