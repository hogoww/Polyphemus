class initialization
initialize
	"ensure it is created upon load"
	1halt.
	self = AbstractPharoImageResource ifTrue: [ ^ self ].
	self current