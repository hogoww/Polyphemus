printing
printOn: aStream
	[ aStream << self oopName ] 
		on: Error 
		do: [ ^ aStream << 'Bad Class' ]