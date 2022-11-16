debugger
pc
	"we need to calculate pc from the frame if one exist for now this a hack to have non nil PC for isDead"
	^pc ifNil: [ pc := self startpc ]