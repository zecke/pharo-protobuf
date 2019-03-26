Class {
	#name : #BaselineOfProtobuf,
	#superclass : #BaselineOf,
	#category : #BaselineOfProtobuf
}

{ #category : #baselines }
BaselineOfProtobuf >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			postLoadDoIt: #'postload:package:'.
		spec
			package: 'Protobuf';
			package: 'Protobuf-Tests' with: [ spec requires: #('Protobuf') ];
			package: 'Protobuf-Definitions' with: [ spec requires: #('Protobuf') ];
			package: 'Protobuf-Definitions-Tests' with: [ spec requires: #('Protobuf-Definitions') ].
		spec
			group: 'default' with: #('Core' 'Tests' 'Definitions');
			group: 'Core' with: 'Protobuf';
			group: 'Tests' with: #('Protobuf-Tests' 'Protobuf-Definitions-Tests');
			group: 'Definitions' with: 'Protobuf-Definitions']
]

{ #category : #baselines }
BaselineOfProtobuf >> postload: loader package: packageSpec [
	PBTypeMessage allSubclasses do: #resolveEncodingType.
]
