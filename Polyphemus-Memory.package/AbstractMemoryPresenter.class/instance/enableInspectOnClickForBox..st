event-handling
enableInspectOnClickForBox: box
	box when: RSMouseLeftClick do:[ :rso | rso shape model inspect ].
	^ box