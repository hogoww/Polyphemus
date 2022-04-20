scaling
setScalingSizeByByteSize

	^ scaling := [ :aBox | aBox width: aBox model oopByteSize ]