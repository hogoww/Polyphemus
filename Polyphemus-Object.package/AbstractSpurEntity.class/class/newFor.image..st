instance creation
newFor: anAddress image: image
	| handler |
	handler := (SpurImmediate canHandle: anAddress image: image) ifTrue: [ { SpurImmediate } ].
	handler := handler ifNil: [ self allSubclasses select: [ :aSubclass | aSubclass = SpurImmediate ifFalse: [ aSubclass canHandle: anAddress image: image ] ifTrue: false ] ].
	
	
	^ (handler ifEmpty: [ SpurRegularObject ] ifNotEmpty: [
		handler size > 1 ifTrue: [ self halt ].
		handler first ]) on: anAddress image: image