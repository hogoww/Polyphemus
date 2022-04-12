accessing
specialObjectsArray

	^ SpurObject on: specialObjectsArrayOop - oldBaseAddress + headerSize + 1 image: self