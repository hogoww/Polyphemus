imageName
getImage: aNumber
	self getImageFor: aNumber Process: 'latest-64'. 
	self getImageFor: aNumber Process: 'latest-minimal-64'.