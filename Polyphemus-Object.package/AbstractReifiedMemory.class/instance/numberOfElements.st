querying
numberOfElements 

	^ (self select: [:e | e isNotNil ]) size

	