debugger
isDead
	^ pc isNil or: [  self isEndOfProcessTermination ]