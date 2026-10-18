as yet unclassified
birdImage
	| form |
	form := (Form fromBinaryStream: self class birdIconData base64Decoded readStream)
		scaledToSize: 24 @ 24.
	^ BlElement new
		extent: 24 @ 24;
		background: form;
		yourself