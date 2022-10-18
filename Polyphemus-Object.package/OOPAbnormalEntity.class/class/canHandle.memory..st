instance creation
canHandle: address memory: memory
	"We create abnormal objects after the reification.
	If we encounter an error that should create an abnormal object, we signal the error that will handle it later. not perfect but it will have to do for now"
	| classIndexOf |
	
	classIndexOf := (memory classIndexOf: address).
	(classIndexOf < memory arrayClassIndexPun and: [ classIndexOf ~= memory isForwardedObjectClassIndexPun ]) ifTrue: [ self halt.Error signal ].
	^ false