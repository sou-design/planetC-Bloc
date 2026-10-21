as yet unclassified
onGameChanged: anAnnouncement
	self isAttachedToSceneGraph
		ifTrue: [ self enqueueTask: (BlTaskAction new action: [ self refresh ]) ]
		ifFalse: [ self refresh ]