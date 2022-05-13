printing
printOn: aStream
	[ aStream << self oopClassName ] 
		on: Error 
		do: [ ^ aStream << 'Bad Class' ]