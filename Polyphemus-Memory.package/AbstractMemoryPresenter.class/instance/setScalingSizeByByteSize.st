scaling
setScalingSizeByByteSize

	^ scaling := [ :aBox | aBox size: aBox model oopByteSize ]