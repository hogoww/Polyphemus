accessing
currentImage
	"Initialize the resource the first time around
	As this is an anonymous resource, we initialize it the first time around and do not say to SUnit we use a resource" 
	| initializer |
	currentImage ifNotNil: [ ^ currentImage ].
	currentImage := MinimalPharo11ImageResource newSubclass.
	
	"initialize it the first time around"
	initializer := self new.
	currentImage current setUpTestCase: initializer.
	initializer interpretUntilMethodChangedNumberOfTimes: self numberOfSteps.
	
	^ currentImage