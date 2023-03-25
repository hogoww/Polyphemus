accessing
currentImage
	"Initialize the resource the first time around
	As this is an anonymous resource, we initialize it the first time around and do not say to SUnit we use a resource" 
	| initializer |

	"If the platform does not support wget, it'll loop endlessly.
	This is not great.
	We therefore exclude windows for now"
	PlatformResolver forCurrentPlatform class platformName = 'Win32'	
		ifTrue: [ ^ self ].
	currentImage ifNotNil: [ ^ currentImage ].
	currentImage := MinimalPharo11ImageResource newSubclass.
	
	"initialize it the first time around"
	initializer := self new.
	currentImage current setUpTestCase: initializer.
	initializer interpretUntilMethodChangedNumberOfTimes: self numberOfSteps.
	
	^ currentImage