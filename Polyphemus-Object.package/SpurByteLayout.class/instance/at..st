accessing
at: anInteger 
	
	" ToDo: consider inst vars "
	| slotIndex byteIndex |
	slotIndex := (anInteger - 1) // self wordSize.
	byteIndex := (anInteger - 1) %  self wordSize.
	^ (self slotAt: slotIndex + 1) at: byteIndex + 1