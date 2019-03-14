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
			package: 'Protobuf';
			package: 'Protobuf-Tests' with: [ spec requires: #('Protobuf') ];
			package: 'Protobuf-Definitions' with: [ spec requires: #('Protobuf') ].
		spec
			group: 'default' with: #('Core' 'Tests' 'Definitions');
			group: 'Core' with: 'Protobuf';
			group: 'Tests' with: 'Protobuf-Tests';
			group: 'Definitions' with: 'Protobuf-Definitions']
]
