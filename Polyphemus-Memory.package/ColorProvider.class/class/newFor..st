instance creation
newFor: aStackInspector

	| instance |
	instance := self new.
	instance stackInspector: aStackInspector.
	^instance