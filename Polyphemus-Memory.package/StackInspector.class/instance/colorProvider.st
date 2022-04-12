accessing
colorProvider

	^ colorProvider ifNil: [ colorProvider := DefaultColorProvider newFor: self. ]