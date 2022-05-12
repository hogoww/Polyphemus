printing
printOn: aStream
	[ self oopClassName printOn: aStream ] 
		on: Error 
		do: [ ^ aStream << 'Bad Class' ]