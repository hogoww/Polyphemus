scaling
setScalingByByteSize

	^ scaling := [ :aBox | aBox size: aBox model oopByteSize ].