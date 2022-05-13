instance creation
forSelection: aCollection

	| instance |
	instance := self new.
	instance selection: aCollection.
	^ instance