instance creation
newWith: aPreReifiedMemory 
	
	| instance |
	instance := self new.
	instance memory: aPreReifiedMemory.
	instance computePages.
	^instance