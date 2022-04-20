scaling
setScalingWidthByBytesize

	^ scaling := [ :aBox | aBox width: aBox model oopByteSize ].