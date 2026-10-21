accessing
resultCell: aString kind: aKind color: aColor
	"aKind: #header, #family (family row) or #member (harvester row)"
	| rope background |
	rope := aString asRopedText.
	aKind = #header ifTrue: [
		rope fontSize: 16; bold; foreground: Color white.
		background := Color fromHexString: '2F6B4F' ].
	aKind = #family ifTrue: [
		rope fontSize: 17; bold; foreground: Color black.
		background := aColor alpha: 0.25 ].
	aKind = #member ifTrue: [
		rope fontSize: 14; foreground: (Color fromHexString: '5A5A5A').
		background := Color white ].
	^ BlTextElement new
		text: rope;
		padding: (BlInsets top: 5 left: 12 bottom: 5 right: 12);
		background: background;
		constraintsDo: [ :c | c horizontal exact: 110 ];
		yourself