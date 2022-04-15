scaling
setScalingByByteSize

	^ scaling := [ :aBox | aBox size: aBox model byteSize ].