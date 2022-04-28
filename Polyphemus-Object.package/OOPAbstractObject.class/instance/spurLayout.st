accessing
spurLayout
	^ self oopLayout"spurLayout ifNil: [ spurLayout := SpurLayout on: self image: image ]"