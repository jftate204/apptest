{
	"contents": {
		"69cd7196-c08c-46a0-926b-ba50044d7c5d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "wfapptest",
			"subject": "wfapptest",
			"name": "wfapptest",
			"documentation": "Workflows for apptest",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"753b7031-5c1b-49a3-a5ec-6608797ceca5": {
					"name": "Approve User Request"
				}
			},
			"sequenceFlows": {
				"df620a48-842a-457a-87e6-f48374007b7b": {
					"name": "SequenceFlow2"
				},
				"460aaa27-a161-481d-8c13-7745844ee2b3": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"753b7031-5c1b-49a3-a5ec-6608797ceca5": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve the User Request of ${context.email}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://titworkflowrequest.detitdemostartrequest/de.tit.demo.startrequest",
			"recipientUsers": "jean-francois.tatetsiledze@itelligence.de",
			"id": "usertask1",
			"name": "Approve User Request"
		},
		"df620a48-842a-457a-87e6-f48374007b7b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "753b7031-5c1b-49a3-a5ec-6608797ceca5"
		},
		"460aaa27-a161-481d-8c13-7745844ee2b3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "753b7031-5c1b-49a3-a5ec-6608797ceca5",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"8a0a4901-1363-4222-a739-43d057b69c82": {},
				"1c3c923c-e7ed-4264-b89e-3c70a8f5602f": {},
				"1291ede8-7903-4b01-8926-8ec7f44501fd": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 620,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"8a0a4901-1363-4222-a739-43d057b69c82": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 320,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "753b7031-5c1b-49a3-a5ec-6608797ceca5"
		},
		"1c3c923c-e7ed-4264-b89e-3c70a8f5602f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 320.5,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "8a0a4901-1363-4222-a739-43d057b69c82",
			"object": "df620a48-842a-457a-87e6-f48374007b7b"
		},
		"1291ede8-7903-4b01-8926-8ec7f44501fd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "370,117.75 620.5,117.75",
			"sourceSymbol": "8a0a4901-1363-4222-a739-43d057b69c82",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "460aaa27-a161-481d-8c13-7745844ee2b3"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1
		}
	}
}