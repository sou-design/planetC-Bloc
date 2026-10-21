as yet unclassified
secondaryClickOnCell: aCell
	household
		ifNil: [ game secondaryClickOnCell: aCell ]
		ifNotNil: [ game takeBack: household from: aCell ]