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
			package: 'Protobuf-Compiler' with: [ spec requires: #('Protobuf') ].
		spec
			group: 'default' with: #('Core' 'Compiler');
			group: 'Core' with: 'Protobuf';
			group: 'Compiler' with: 'Protobuf-Compiler']
]
