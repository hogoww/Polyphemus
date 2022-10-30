accessing
resources
	"Initialize the resource the first time around
	As this is an anonymous resource, we initialize it the first time around and do not say to SUnit we use a resource" 
	CustomResource ifNotNil: [ ^ #() ].
	CustomResource := MinimalPharo11ImageResource newSubclass.
	
	"initialize it the first time around"
	CustomResource current setUpTestCase: self.
	self interpretUntilMethodChangedNumberOfTimes: 3.
	
	^ #()