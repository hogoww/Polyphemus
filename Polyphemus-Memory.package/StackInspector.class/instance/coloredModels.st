testing
coloredModels
	^ ((self memorySpaces collect: #canvas) flatCollect: #nodes) collect: [ :aNode | aNode paint ]