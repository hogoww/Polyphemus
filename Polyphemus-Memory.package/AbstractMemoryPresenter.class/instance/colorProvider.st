accessing
colorProvider

	^ colorProvider ifNil: [ colorProvider := DefaultColorProvider forSelection: self selection ]