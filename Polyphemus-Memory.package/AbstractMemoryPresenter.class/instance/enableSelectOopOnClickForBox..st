event-handling
enableSelectOopOnClickForBox: box
	box when: RSMouseRightClick do: [ self selectOop: box model ].
	^ box