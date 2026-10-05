accessing
chooseCell: aCell
	aCell isProtected ifTrue: [ ^ aCell unprotect ].
	self canProtect ifTrue: [ aCell protect ]