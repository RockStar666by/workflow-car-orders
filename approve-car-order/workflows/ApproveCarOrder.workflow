{
	"contents": {
		"ddffa717-907e-441f-8f0d-e29ec29d71c4": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "approvecarorder",
			"subject": "ApproveCarOrder",
			"name": "ApproveCarOrder",
			"documentation": "Approve Car Order",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start Approval Process"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "Approved"
				},
				"10dc6039-bcce-497c-9706-82d5b3ab6218": {
					"name": "Rejected"
				}
			},
			"activities": {
				"9ff2affb-12ce-4ee9-86af-ffd333af04ac": {
					"name": "Init History"
				},
				"e80bfd40-a836-4cdf-939e-1e8780aeebcf": {
					"name": "Approval Needed?"
				},
				"e0375adc-e10b-4b66-b8bb-e2ade0cacfdc": {
					"name": "Approve by Department Manager"
				},
				"ce21afd1-db91-4163-aa23-b095684cde40": {
					"name": "Process Department Manager Decision"
				},
				"c1ce73a4-3459-4e55-8694-47661534a26a": {
					"name": "Department Manager Approval"
				},
				"7d201c7d-604b-4b0c-8f25-051e3323bdf6": {
					"name": "Prepare Payload"
				},
				"920c82ab-476d-4ae9-834f-e558a0054ae6": {
					"name": "Change Car Order Status for Rejected"
				},
				"9e7a9224-6986-4e6a-bf9d-619c42a8b263": {
					"name": "Prepare Payload"
				},
				"b3c98fd5-5000-4e1a-b3dc-8a4c05015528": {
					"name": "Change Car Status for Closed"
				},
				"3164f76d-c79f-4f1c-abcb-55ee4232fa28": {
					"name": "Send E-mail with Approval"
				},
				"e2e5d70c-7d32-4be7-820a-6ac3305d5487": {
					"name": "Send Email with Rejection"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"5a631210-65a8-4c02-bdbf-f282ec95af1f": {
					"name": "SequenceFlow2"
				},
				"34ed4279-e245-4ba7-bde1-282903fc259d": {
					"name": "Yes"
				},
				"5c759b08-f86f-4f92-b8b9-43d17c1b156b": {
					"name": "SequenceFlow4"
				},
				"5524bce3-dfbb-4a2a-aa97-8ba5dfb87b89": {
					"name": "SequenceFlow5"
				},
				"dbeee895-fb00-41ec-b47b-976de80ec0f7": {
					"name": "Approved"
				},
				"1053dcab-d669-4d14-be7b-3ad47b0db806": {
					"name": "Rejected"
				},
				"a3896fb6-6c8e-4195-8d58-882bc2b6de12": {
					"name": "No"
				},
				"e80b4f89-610d-4d4c-95a3-d26770b90cf4": {
					"name": "SequenceFlow10"
				},
				"bc8b5b72-e428-443a-97e6-7c412e09e576": {
					"name": "SequenceFlow11"
				},
				"95f3ae2b-613c-45ee-8d5f-98b436985162": {
					"name": "SequenceFlow13"
				},
				"d661dc89-3088-44d0-8ef6-c5ca7cc86803": {
					"name": "SequenceFlow15"
				},
				"861ffe2c-e72f-4728-8cfa-80b82b7dc62b": {
					"name": "SequenceFlow17"
				},
				"ee40a3ee-b701-4e84-bc47-8958ad2b3ef8": {
					"name": "SequenceFlow18"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start Approval Process",
			"sampleContextRefs": {
				"894e29a3-d976-4c35-aa3c-d8401359816c": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Approved"
		},
		"10dc6039-bcce-497c-9706-82d5b3ab6218": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "Rejected",
			"eventDefinitions": {
				"cf82e094-5446-4ba2-9c50-9b2921406a29": {}
			}
		},
		"9ff2affb-12ce-4ee9-86af-ffd333af04ac": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveCarOrder/ScriptOperations.js",
			"id": "scripttask1",
			"name": "Init History"
		},
		"e80bfd40-a836-4cdf-939e-1e8780aeebcf": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval Needed?",
			"default": "a3896fb6-6c8e-4195-8d58-882bc2b6de12"
		},
		"e0375adc-e10b-4b66-b8bb-e2ade0cacfdc": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for \"${context.WorkflowDetails.title}\" in your role as ${context.WorkflowDetails.currentRole}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.empData.buddies}",
			"recipientGroups": "WorkflowGroup",
			"formReference": "/forms/ApproveCarOrder/ApproveCarOrder.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvecarorder"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approve by Department Manager"
		},
		"ce21afd1-db91-4163-aa23-b095684cde40": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveCarOrder/ScriptOperations.js",
			"id": "scripttask2",
			"name": "Process Department Manager Decision"
		},
		"c1ce73a4-3459-4e55-8694-47661534a26a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Department Manager Approval",
			"default": "1053dcab-d669-4d14-be7b-3ad47b0db806"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "9ff2affb-12ce-4ee9-86af-ffd333af04ac"
		},
		"5a631210-65a8-4c02-bdbf-f282ec95af1f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "9ff2affb-12ce-4ee9-86af-ffd333af04ac",
			"targetRef": "e80bfd40-a836-4cdf-939e-1e8780aeebcf"
		},
		"34ed4279-e245-4ba7-bde1-282903fc259d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.CarOrder.totalPrice>= 100}",
			"id": "sequenceflow3",
			"name": "Yes",
			"sourceRef": "e80bfd40-a836-4cdf-939e-1e8780aeebcf",
			"targetRef": "e0375adc-e10b-4b66-b8bb-e2ade0cacfdc"
		},
		"5c759b08-f86f-4f92-b8b9-43d17c1b156b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "e0375adc-e10b-4b66-b8bb-e2ade0cacfdc",
			"targetRef": "ce21afd1-db91-4163-aa23-b095684cde40"
		},
		"5524bce3-dfbb-4a2a-aa97-8ba5dfb87b89": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "ce21afd1-db91-4163-aa23-b095684cde40",
			"targetRef": "c1ce73a4-3459-4e55-8694-47661534a26a"
		},
		"dbeee895-fb00-41ec-b47b-976de80ec0f7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"approve\"}",
			"id": "sequenceflow6",
			"name": "Approved",
			"sourceRef": "c1ce73a4-3459-4e55-8694-47661534a26a",
			"targetRef": "9e7a9224-6986-4e6a-bf9d-619c42a8b263"
		},
		"1053dcab-d669-4d14-be7b-3ad47b0db806": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "Rejected",
			"sourceRef": "c1ce73a4-3459-4e55-8694-47661534a26a",
			"targetRef": "7d201c7d-604b-4b0c-8f25-051e3323bdf6"
		},
		"a3896fb6-6c8e-4195-8d58-882bc2b6de12": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "No",
			"sourceRef": "e80bfd40-a836-4cdf-939e-1e8780aeebcf",
			"targetRef": "9e7a9224-6986-4e6a-bf9d-619c42a8b263"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"96b8883d-3ded-4b53-aa4e-1fe5f9483300": {},
				"ef53ed3c-146a-4cea-b199-307038dcc500": {},
				"4872b187-d916-41ae-b5ee-294c8b8f9e1e": {},
				"2bf2a5be-362d-497d-83e3-a628e5f3fb3b": {},
				"e991b2de-8303-4a35-b7d6-ed6dd5dfa494": {},
				"e6397315-9368-4695-a68b-bbf10fb698b5": {},
				"0a7913ab-dbb5-4166-8b8d-e2321bfce70b": {},
				"86fe74d1-2609-429d-9589-6d6067a01c05": {},
				"a814e5e0-d0d0-45f9-b95f-8df8d2e9f360": {},
				"d7f84d5e-51d6-4950-91a9-2c329accf477": {},
				"73bfa757-e343-4c7d-bedb-702ede020675": {},
				"ab93c5bc-8786-4995-9c55-35857e4d7e44": {},
				"91aa38a2-28e1-4277-b589-20ee52aea6c9": {},
				"e37c7e31-0f0e-41e3-9e73-0478e12bc193": {},
				"c9e11741-0c84-4df0-8c04-1407eeec96c3": {},
				"e7d98638-c853-428f-be31-6cfd9859ec22": {},
				"611e67af-9a5d-4691-aed5-1b276d744d36": {},
				"5f74f6a3-0fa1-4356-b601-4683da11bca7": {},
				"728ede5e-4e01-43b3-a4bc-46bc66214a72": {},
				"393519a7-cc17-4652-a9a2-6c013a952362": {},
				"ac854a89-1215-4526-b883-1eb1a12fc8d0": {},
				"752597fd-f055-464f-a265-fbb267eeaae8": {},
				"c74aa9fb-e404-4e5d-a5b8-087efd318148": {},
				"43b1f86e-fd9f-4779-a199-1f12410eeba1": {},
				"c29ff008-3bbd-4461-97ca-f884fb45c048": {}
			}
		},
		"894e29a3-d976-4c35-aa3c-d8401359816c": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/ApproveCarOrder/SampleStartPayload.json",
			"id": "default-start-context"
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
			"x": 1411,
			"y": -9,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "96b8883d-3ded-4b53-aa4e-1fe5f9483300",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"96b8883d-3ded-4b53-aa4e-1fe5f9483300": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "9ff2affb-12ce-4ee9-86af-ffd333af04ac"
		},
		"ef53ed3c-146a-4cea-b199-307038dcc500": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,116.9375 373.37073643296924,116.9375",
			"sourceSymbol": "96b8883d-3ded-4b53-aa4e-1fe5f9483300",
			"targetSymbol": "4872b187-d916-41ae-b5ee-294c8b8f9e1e",
			"object": "5a631210-65a8-4c02-bdbf-f282ec95af1f"
		},
		"4872b187-d916-41ae-b5ee-294c8b8f9e1e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 352.37073643296924,
			"y": 96.125,
			"object": "e80bfd40-a836-4cdf-939e-1e8780aeebcf"
		},
		"2bf2a5be-362d-497d-83e3-a628e5f3fb3b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "373.37073643296924,117.21875 524.1853637695312,117.21875",
			"sourceSymbol": "4872b187-d916-41ae-b5ee-294c8b8f9e1e",
			"targetSymbol": "e991b2de-8303-4a35-b7d6-ed6dd5dfa494",
			"object": "34ed4279-e245-4ba7-bde1-282903fc259d"
		},
		"e991b2de-8303-4a35-b7d6-ed6dd5dfa494": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 474.1853682164846,
			"y": 87.3125,
			"width": 100.00000000000006,
			"height": 60,
			"object": "e0375adc-e10b-4b66-b8bb-e2ade0cacfdc"
		},
		"e6397315-9368-4695-a68b-bbf10fb698b5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "524.1853682164847,117.359375 691.8426841082423,117.359375",
			"sourceSymbol": "e991b2de-8303-4a35-b7d6-ed6dd5dfa494",
			"targetSymbol": "0a7913ab-dbb5-4166-8b8d-e2321bfce70b",
			"object": "5c759b08-f86f-4f92-b8b9-43d17c1b156b"
		},
		"0a7913ab-dbb5-4166-8b8d-e2321bfce70b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 641.8426841082423,
			"y": 87.40625,
			"width": 100,
			"height": 60,
			"object": "ce21afd1-db91-4163-aa23-b095684cde40"
		},
		"86fe74d1-2609-429d-9589-6d6067a01c05": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "691.8426841082423,117.4296875 820.1713420541212,117.4296875",
			"sourceSymbol": "0a7913ab-dbb5-4166-8b8d-e2321bfce70b",
			"targetSymbol": "a814e5e0-d0d0-45f9-b95f-8df8d2e9f360",
			"object": "5524bce3-dfbb-4a2a-aa97-8ba5dfb87b89"
		},
		"a814e5e0-d0d0-45f9-b95f-8df8d2e9f360": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 799.1713420541212,
			"y": 96.453125,
			"object": "c1ce73a4-3459-4e55-8694-47661534a26a"
		},
		"d7f84d5e-51d6-4950-91a9-2c329accf477": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "820.1713420541212,116.9765625 820.1713420541212,75 995.1713256835938,75 995.1713420541212,38.953125",
			"sourceSymbol": "a814e5e0-d0d0-45f9-b95f-8df8d2e9f360",
			"targetSymbol": "5f74f6a3-0fa1-4356-b601-4683da11bca7",
			"object": "dbeee895-fb00-41ec-b47b-976de80ec0f7"
		},
		"73bfa757-e343-4c7d-bedb-702ede020675": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1371.1713420541212,
			"y": 196.953125,
			"width": 35,
			"height": 35,
			"object": "10dc6039-bcce-497c-9706-82d5b3ab6218"
		},
		"ab93c5bc-8786-4995-9c55-35857e4d7e44": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "820.1713420541212,115.453125 896.6713256835938,115.453125 896.6713256835938,214.453125 952.6713420541212,214.453125",
			"sourceSymbol": "a814e5e0-d0d0-45f9-b95f-8df8d2e9f360",
			"targetSymbol": "e37c7e31-0f0e-41e3-9e73-0478e12bc193",
			"object": "1053dcab-d669-4d14-be7b-3ad47b0db806"
		},
		"91aa38a2-28e1-4277-b589-20ee52aea6c9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "375,117.125 375,9.453125 995.1713420541212,9.453125",
			"sourceSymbol": "4872b187-d916-41ae-b5ee-294c8b8f9e1e",
			"targetSymbol": "5f74f6a3-0fa1-4356-b601-4683da11bca7",
			"object": "a3896fb6-6c8e-4195-8d58-882bc2b6de12"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"maildefinition": 2,
			"sequenceflow": 18,
			"startevent": 1,
			"endevent": 2,
			"usertask": 1,
			"servicetask": 2,
			"scripttask": 5,
			"mailtask": 3,
			"exclusivegateway": 2
		},
		"cf82e094-5446-4ba2-9c50-9b2921406a29": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"7d201c7d-604b-4b0c-8f25-051e3323bdf6": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveCarOrder/PreparePayloadForReject.js",
			"id": "scripttask3",
			"name": "Prepare Payload"
		},
		"e37c7e31-0f0e-41e3-9e73-0478e12bc193": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 952.1713420541212,
			"y": 184.453125,
			"width": 100,
			"height": 60,
			"object": "7d201c7d-604b-4b0c-8f25-051e3323bdf6"
		},
		"920c82ab-476d-4ae9-834f-e558a0054ae6": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CAP_ORDER_STATUS",
			"destinationSource": "consumer",
			"path": "technical/CarOrders/${context.CarOrder.orderUUID}",
			"httpMethod": "PATCH",
			"requestVariable": "${context.PayloadUpdateOrderStatus}",
			"responseVariable": "${context.ResponseUpdateOrderStatus}",
			"id": "servicetask1",
			"name": "Change Car Order Status for Rejected"
		},
		"c9e11741-0c84-4df0-8c04-1407eeec96c3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1102.1713420541212,
			"y": 184.453125,
			"width": 100,
			"height": 60,
			"object": "920c82ab-476d-4ae9-834f-e558a0054ae6"
		},
		"e80b4f89-610d-4d4c-95a3-d26770b90cf4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "7d201c7d-604b-4b0c-8f25-051e3323bdf6",
			"targetRef": "920c82ab-476d-4ae9-834f-e558a0054ae6"
		},
		"e7d98638-c853-428f-be31-6cfd9859ec22": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1002.1713420541212,214.453125 1152.1713420541212,214.453125",
			"sourceSymbol": "e37c7e31-0f0e-41e3-9e73-0478e12bc193",
			"targetSymbol": "c9e11741-0c84-4df0-8c04-1407eeec96c3",
			"object": "e80b4f89-610d-4d4c-95a3-d26770b90cf4"
		},
		"bc8b5b72-e428-443a-97e6-7c412e09e576": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "920c82ab-476d-4ae9-834f-e558a0054ae6",
			"targetRef": "e2e5d70c-7d32-4be7-820a-6ac3305d5487"
		},
		"611e67af-9a5d-4691-aed5-1b276d744d36": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1152.1713420541212,215.2265625 1286.9213420541212,215.2265625",
			"sourceSymbol": "c9e11741-0c84-4df0-8c04-1407eeec96c3",
			"targetSymbol": "43b1f86e-fd9f-4779-a199-1f12410eeba1",
			"object": "bc8b5b72-e428-443a-97e6-7c412e09e576"
		},
		"9e7a9224-6986-4e6a-bf9d-619c42a8b263": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveCarOrder/PreparePayloadForClosed.js",
			"id": "scripttask4",
			"name": "Prepare Payload"
		},
		"5f74f6a3-0fa1-4356-b601-4683da11bca7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 945.1713420541212,
			"y": -20.546875,
			"width": 100,
			"height": 60,
			"object": "9e7a9224-6986-4e6a-bf9d-619c42a8b263"
		},
		"95f3ae2b-613c-45ee-8d5f-98b436985162": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "9e7a9224-6986-4e6a-bf9d-619c42a8b263",
			"targetRef": "b3c98fd5-5000-4e1a-b3dc-8a4c05015528"
		},
		"728ede5e-4e01-43b3-a4bc-46bc66214a72": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "995.1713420541212,9.21484375 1156.3356710270605,9.21484375",
			"sourceSymbol": "5f74f6a3-0fa1-4356-b601-4683da11bca7",
			"targetSymbol": "393519a7-cc17-4652-a9a2-6c013a952362",
			"object": "95f3ae2b-613c-45ee-8d5f-98b436985162"
		},
		"b3c98fd5-5000-4e1a-b3dc-8a4c05015528": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CAP_ORDER_STATUS",
			"destinationSource": "consumer",
			"path": "technical/CarOrders/${context.CarOrder.orderUUID}",
			"httpMethod": "PATCH",
			"requestVariable": "${context.PayloadUpdateOrderStatus}",
			"responseVariable": "${context.ResponseUpdateOrderStatus}",
			"id": "servicetask2",
			"name": "Change Car Status for Closed"
		},
		"393519a7-cc17-4652-a9a2-6c013a952362": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1106.3356710270605,
			"y": -21.0234375,
			"width": 100,
			"height": 60,
			"object": "b3c98fd5-5000-4e1a-b3dc-8a4c05015528"
		},
		"d661dc89-3088-44d0-8ef6-c5ca7cc86803": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "b3c98fd5-5000-4e1a-b3dc-8a4c05015528",
			"targetRef": "3164f76d-c79f-4f1c-abcb-55ee4232fa28"
		},
		"ac854a89-1215-4526-b883-1eb1a12fc8d0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1156.3356710270605,8.857421875 1291.4178355135302,8.857421875",
			"sourceSymbol": "393519a7-cc17-4652-a9a2-6c013a952362",
			"targetSymbol": "752597fd-f055-464f-a265-fbb267eeaae8",
			"object": "d661dc89-3088-44d0-8ef6-c5ca7cc86803"
		},
		"3164f76d-c79f-4f1c-abcb-55ee4232fa28": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "Send E-mail with Approval",
			"mailDefinitionRef": "a8db221f-b40e-4397-aec5-c8f1b94ad73a"
		},
		"752597fd-f055-464f-a265-fbb267eeaae8": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1241.4178355135302,
			"y": -21.26171875,
			"width": 100,
			"height": 60,
			"object": "3164f76d-c79f-4f1c-abcb-55ee4232fa28"
		},
		"861ffe2c-e72f-4728-8cfa-80b82b7dc62b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "3164f76d-c79f-4f1c-abcb-55ee4232fa28",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"c74aa9fb-e404-4e5d-a5b8-087efd318148": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1291.4178355135302,8.619140625 1428.5,8.619140625",
			"sourceSymbol": "752597fd-f055-464f-a265-fbb267eeaae8",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "861ffe2c-e72f-4728-8cfa-80b82b7dc62b"
		},
		"a8db221f-b40e-4397-aec5-c8f1b94ad73a": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"to": "artsiom_sauchuk@epam.com",
			"subject": "Successful Order!",
			"reference": "/webcontent/ApproveCarOrder/SuccessfulOrderEmail.html",
			"id": "maildefinition1"
		},
		"e2e5d70c-7d32-4be7-820a-6ac3305d5487": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask3",
			"name": "Send Email with Rejection",
			"mailDefinitionRef": "0d2b79a2-7605-4cd0-960b-8aaef803106d"
		},
		"43b1f86e-fd9f-4779-a199-1f12410eeba1": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1236.9213420541212,
			"y": 186,
			"width": 100,
			"height": 60,
			"object": "e2e5d70c-7d32-4be7-820a-6ac3305d5487"
		},
		"ee40a3ee-b701-4e84-bc47-8958ad2b3ef8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "e2e5d70c-7d32-4be7-820a-6ac3305d5487",
			"targetRef": "10dc6039-bcce-497c-9706-82d5b3ab6218"
		},
		"c29ff008-3bbd-4461-97ca-f884fb45c048": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1286.9213420541212,215.2265625 1388.6713420541212,215.2265625",
			"sourceSymbol": "43b1f86e-fd9f-4779-a199-1f12410eeba1",
			"targetSymbol": "73bfa757-e343-4c7d-bedb-702ede020675",
			"object": "ee40a3ee-b701-4e84-bc47-8958ad2b3ef8"
		},
		"0d2b79a2-7605-4cd0-960b-8aaef803106d": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "artsiom_sauchuk@epam.com",
			"subject": "Order Rejected",
			"reference": "/webcontent/ApproveCarOrder/RejectedOrderEmail.html",
			"id": "maildefinition2"
		}
	}
}