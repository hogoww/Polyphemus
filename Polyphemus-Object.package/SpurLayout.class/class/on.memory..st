as yet unclassified
on: aSpurObject memory: aSpurImage
	| layoutClass |
	"TH; Why passing the image here ?" 
	
	layoutClass := self layoutClassFromFormat: aSpurObject oopFormat.
	
	^ layoutClass new 
		object: aSpurObject.