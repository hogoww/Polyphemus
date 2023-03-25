running
setUp
	| initializer |
	"If the platform does not support wget, it'll loop endlessly.
	This is not great.
	We therefore exclude windows for now"
	PlatformResolver forCurrentPlatform class platformName = 'Win32'	
		ifTrue: [ ^ self ].
		
	super setUp.
	initializer := AbstractInspectorsTest new.
	initializer imagePath: self imagePath.
	initializer setUpForResource.
	self setUpFromInitializer: initializer.