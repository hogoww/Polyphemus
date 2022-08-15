reifying
objects
	"recreate the object collection only when needed"
	lastObjectAccess > objects size ifTrue: [ ^ self createCompressedVersion ].
	lastObjectAccess := objects size.
	^ objects