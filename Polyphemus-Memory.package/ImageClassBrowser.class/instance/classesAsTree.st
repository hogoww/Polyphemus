displayMode
classesAsTree

	| objectClass |
	classOrder label: self classFlatLabel.
	classesList := self newTree.
	objectClass := reifiedMemory reifiedClassTable allClassesOop detect: [ :o | o oopName = reifiedMemory mode objectClassName ].
	classesList
		roots: { objectClass };
		children: [ :node | node oopSubclasses ];
		display: [ :node | node oopName ];
		contextMenu: (self contextMenuForItems: classesList);
		expandAll 
