accessing
spurLayout
	^ spurLayout ifNil: [ spurLayout := SpurLayout on: self image: image ]