instance creation
newFrom: aStackPage on: aMemory

	| instance |
	instance := self new.
	instance associatedPage: aStackPage.
	instance computeFramesFrom: aStackPage and: aMemory.
	^ instance