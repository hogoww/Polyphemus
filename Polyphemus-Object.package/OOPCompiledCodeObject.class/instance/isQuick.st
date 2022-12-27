testing
isQuick
	"This is not enough to know if it is isQuick it just anwser if it is a primitive but you can backup code making it not quick"
	"^ (self methodHeader asInteger bitAt: 17) = 1"
	^ self primitive between: 256 and: 519