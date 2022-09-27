baselines
defaultPlayground
	^ '" clean P11 "path := FileSystem workingDirectory / ''..'' / ''clean11'' / ''clean11.image''.
" Minimal Pharo11 " path := (IceRepository registeredRepositoryIncludingPackage: BaselineOfPolyphemus) location pathString ,''/resources/minimal64Bit.image''.
"PharoCandle image" path := AbstractInspectorsTest new pathTo64BitImage asFileReference.

(MemoryInspector newFromImage: path) open.
'