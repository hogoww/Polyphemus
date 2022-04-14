as yet unclassified
on: aSpurObject image: aSpurImage
	| layoutClass |
	"TH; Why passing the image here ?" 
	
	layoutClass := self layoutClassFromFormat: aSpurObject oopFormat.
	
	^ layoutClass new 
		object: aSpurObject.