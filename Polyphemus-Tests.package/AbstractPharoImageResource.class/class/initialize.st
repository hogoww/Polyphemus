class initialization
initialize
	"ensure it is created upon load"
	self = AbstractPharoImageResource ifTrue: [ ^ self ].
	self current