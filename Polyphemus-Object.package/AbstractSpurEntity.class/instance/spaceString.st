accessing
spaceString
	self isOld ifTrue: [ ^ 'Old Space' ].
	^ 'new Space'