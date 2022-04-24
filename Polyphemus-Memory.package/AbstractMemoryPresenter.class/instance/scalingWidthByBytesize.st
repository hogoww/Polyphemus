scaling
scalingWidthByBytesize

	^ scaling := [ :aBox | aBox width: aBox model oopByteSize ].