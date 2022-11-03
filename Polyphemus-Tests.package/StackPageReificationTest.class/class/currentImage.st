accessing
currentImage
	"Initialize the resource the first time around
	As this is an anonymous resource, we initialize it the first time around and do not say to SUnit we use a resource" 
	| initializer |
	customResource ifNotNil: [ ^ customResource ].
	customResource := MinimalPharo11ImageResource newSubclass.
	
	"initialize it the first time around"
	initializer := self new.
	customResource current setUpTestCase: initializer.
	initializer interpretUntilMethodChangedNumberOfTimes: self new numberOfSteps.
	
	^ customResource