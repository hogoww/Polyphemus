initialization
selectFramePart: framePart
	"should be only oops in that array. currently incomplete"
	| canvas |
	(framePart value isKindOf: VMFrameBuilder) ifTrue: [ ^ self selectAllFrame: framePart ].
	(interpreter objectMemory addressCouldBeObj: framePart value) ifFalse:[ ^ self ].
	
	canvas := oldSpace canvas.
	(canvas nodes select: [ :aNode| aNode model = framePart value  ]) do: [ :n| n paint: Color red ].
	canvas signalUpdate.
	canvas := newSpace canvas.
	(canvas nodes select: [ :aNode| aNode model = framePart value  ]) do: [ :n| n paint: Color red ].
	canvas signalUpdate