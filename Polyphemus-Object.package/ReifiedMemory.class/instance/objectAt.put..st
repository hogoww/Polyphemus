accessing
objectAt: anOop put: anObject
	objects at: anOop 
			ifPresent: [ self error: 'Trying to add twice the same address' ]
			ifAbsentPut: [ anObject ]