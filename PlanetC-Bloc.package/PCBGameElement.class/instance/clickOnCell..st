as yet unclassified
clickOnCell: aCell
	household
		ifNil: [ game clickOnCell: aCell ]
		ifNotNil: [ game placeHarvesterOf: household on: aCell ]