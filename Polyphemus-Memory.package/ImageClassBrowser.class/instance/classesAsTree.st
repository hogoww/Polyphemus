displayMode
classesAsTree

	| objectClass |
	classOrder label: self classFlatLabel.
	classesList := self newTree.
	objectClass := (reifiedMemory reifyOop: reifiedMemory metaclass) oopSuperclass oopSuperclass.
	classesList
		roots: { objectClass };
		children: [ :node | node oopSubclasses ];
		display: [ :node | node oopClassName ];
		contextMenu: (self contextMenuForItems: classesList);
		expandAll 
