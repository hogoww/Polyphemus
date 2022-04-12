accessing-header
previousHeaderInteger

	^ self memory integerAt: address + (0 - self headerSize) size: 4 signed: false