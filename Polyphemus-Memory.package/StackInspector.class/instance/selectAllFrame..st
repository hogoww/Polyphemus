inspecting
selectAllFrame: framePart 
	framePart value allFrameParts do: [ :fp | self selectFramePart: fp ]