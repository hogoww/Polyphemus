scaling
scalingSizeByByteSize

	^ scaling := [ :aBox | aBox size: aBox model oopByteSize ]