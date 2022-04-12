modifying
pinObject
	self memory pinObject: address value.
	address := self memory followForwarded: self address value.