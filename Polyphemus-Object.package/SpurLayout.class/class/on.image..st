as yet unclassified
on: aSpurObject image: aSpurImage
	| layoutClass |
	"TH; Why passing the image here ?" 
	
	layoutClass := self layoutClassFromFormat: aSpurObject objectFormat.
	
	^ layoutClass new 
		object: aSpurObject.