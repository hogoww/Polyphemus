scaling
setScalingWidthByBytesize

	^ scaling := [ :aBox | aBox size: aBox model oopByteSize ].