instance creation
newFor: anAddress image: image
	| handler |
	handler := self allSubclasses select: [ :aSubclass | aSubclass handlerFor: anAddress image: image ].
	
	(handler ifEmpty: [ SpurRegularObject ] ifNotEmpty: [ handler first ]) on: anAddress image: image.
	handler size = 1  ifFalse: [ self halt ].