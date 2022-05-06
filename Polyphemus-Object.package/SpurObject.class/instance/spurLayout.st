accessing
spurLayout
	^ spurLayout ifNil: [ spurLayout := SpurLayout on: self memory: image ]