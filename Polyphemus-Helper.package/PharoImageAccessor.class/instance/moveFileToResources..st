action
moveFileToResources: aPath
	self runCommand: 'mv ' , aPath , ' ./resources'