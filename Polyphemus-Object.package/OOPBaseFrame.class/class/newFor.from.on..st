instance creation
newFor: anInteger from: aCogStackPage on: aPreReifiedMemory

	| instance |
	instance := self new.
	instance
		baseFP: anInteger;
		memory: aPreReifiedMemory;
		computeFields: aCogStackPage.
	^ instance