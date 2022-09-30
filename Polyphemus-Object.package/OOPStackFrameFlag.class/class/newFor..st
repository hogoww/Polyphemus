instance creation
newFor: anOOPBaseFrame

	| instance |
	instance := self new.
	instance initializeFor: anOOPBaseFrame.
	^ instance