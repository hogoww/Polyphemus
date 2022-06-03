testing
isQuick
	^ (self methodHeader asInteger bitAt: 17) = 1