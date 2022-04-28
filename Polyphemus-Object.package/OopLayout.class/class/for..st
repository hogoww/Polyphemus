instance creation
for: anOopObject

	| layoutClass |
	layoutClass := self layoutClassFromFormat: anOopObject oopFormat.
	
	^ layoutClass new 
		object: anOopObject