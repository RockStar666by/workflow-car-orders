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
				"a4c0f426-f2d1-4ab5-842c-1a2b43510928": {
					"name": "Send approval mail"
				},
				"ce59580a-1896-44c5-a6f7-83e79a45804d": {
					"name": "Send rejection mail"
				},
				"14a6eb6e-a4ce-4b54-8f30-0bfd70fb0748": {
					"name": "Get Client Information"
				},
				"b5f6d6a6-51fb-449c-bcbe-7124d4c48fa2": {
					"name": "Prepare Message"
				},
				"e3551e94-52ab-4cac-a1e8-f7b826301978": {
					"name": "Check User Tier"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
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
				"c6ad7d91-5ea4-4462-9119-b10919be302d": {
					"name": "SequenceFlow19"
				},
				"ecf15449-dc08-43a6-9cfd-db52ba9fe90b": {
					"name": "SequenceFlow20"
				},
				"8633fd6f-6d87-4001-b2f2-f3f233f146ff": {
					"name": "SequenceFlow22"
				},
				"56ae5e70-41ac-42e8-8e35-5e23f841383c": {
					"name": "SequenceFlow23"
				},
				"488de20b-34a3-43b4-bd28-3c679a2f3c61": {
					"name": "SequenceFlow24"
				},
				"87e78ce4-29ab-44d0-afd7-57fdadbec866": {
					"name": "SequenceFlow25"
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
				"dca41d69-f0d9-44fb-b4e8-2a721adea6a3": {}
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
		"7d201c7d-604b-4b0c-8f25-051e3323bdf6": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveCarOrder/PreparePayloadForReject.js",
			"id": "scripttask3",
			"name": "Prepare Payload"
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
		"9e7a9224-6986-4e6a-bf9d-619c42a8b263": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveCarOrder/PreparePayloadForClosed.js",
			"id": "scripttask4",
			"name": "Prepare Payload"
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
		"a4c0f426-f2d1-4ab5-842c-1a2b43510928": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask4",
			"name": "Send approval mail",
			"mailDefinitionRef": "75ac466c-c058-43f8-9dda-f386a04c227f"
		},
		"ce59580a-1896-44c5-a6f7-83e79a45804d": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask5",
			"name": "Send rejection mail",
			"mailDefinitionRef": "40a412dd-7a47-46ab-8f92-0e3985e0908d"
		},
		"14a6eb6e-a4ce-4b54-8f30-0bfd70fb0748": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CAP_CAR_RENT",
			"destinationSource": "consumer",
			"path": "rent/Clients?$filter=email eq '${context.CarOrder.userID}'",
			"httpMethod": "GET",
			"responseVariable": "${context.Client}",
			"id": "servicetask3",
			"name": "Get Client Information"
		},
		"b5f6d6a6-51fb-449c-bcbe-7124d4c48fa2": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApproveCarOrder/GetClientTier.js",
			"id": "scripttask6",
			"name": "Prepare Message"
		},
		"e3551e94-52ab-4cac-a1e8-f7b826301978": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"destinationSource": "consumer",
			"path": "/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.requestData.request}",
			"responseVariable": "${context.businessResponse}",
			"id": "servicetask4",
			"name": "Check User Tier"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "9ff2affb-12ce-4ee9-86af-ffd333af04ac"
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
		"e80b4f89-610d-4d4c-95a3-d26770b90cf4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "7d201c7d-604b-4b0c-8f25-051e3323bdf6",
			"targetRef": "920c82ab-476d-4ae9-834f-e558a0054ae6"
		},
		"bc8b5b72-e428-443a-97e6-7c412e09e576": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "920c82ab-476d-4ae9-834f-e558a0054ae6",
			"targetRef": "ce59580a-1896-44c5-a6f7-83e79a45804d"
		},
		"95f3ae2b-613c-45ee-8d5f-98b436985162": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "9e7a9224-6986-4e6a-bf9d-619c42a8b263",
			"targetRef": "b3c98fd5-5000-4e1a-b3dc-8a4c05015528"
		},
		"d661dc89-3088-44d0-8ef6-c5ca7cc86803": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "b3c98fd5-5000-4e1a-b3dc-8a4c05015528",
			"targetRef": "a4c0f426-f2d1-4ab5-842c-1a2b43510928"
		},
		"c6ad7d91-5ea4-4462-9119-b10919be302d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "a4c0f426-f2d1-4ab5-842c-1a2b43510928",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"ecf15449-dc08-43a6-9cfd-db52ba9fe90b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "ce59580a-1896-44c5-a6f7-83e79a45804d",
			"targetRef": "10dc6039-bcce-497c-9706-82d5b3ab6218"
		},
		"8633fd6f-6d87-4001-b2f2-f3f233f146ff": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "14a6eb6e-a4ce-4b54-8f30-0bfd70fb0748",
			"targetRef": "b5f6d6a6-51fb-449c-bcbe-7124d4c48fa2"
		},
		"56ae5e70-41ac-42e8-8e35-5e23f841383c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "b5f6d6a6-51fb-449c-bcbe-7124d4c48fa2",
			"targetRef": "e3551e94-52ab-4cac-a1e8-f7b826301978"
		},
		"488de20b-34a3-43b4-bd28-3c679a2f3c61": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "e3551e94-52ab-4cac-a1e8-f7b826301978",
			"targetRef": "e0375adc-e10b-4b66-b8bb-e2ade0cacfdc"
		},
		"87e78ce4-29ab-44d0-afd7-57fdadbec866": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "9ff2affb-12ce-4ee9-86af-ffd333af04ac",
			"targetRef": "14a6eb6e-a4ce-4b54-8f30-0bfd70fb0748"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"96b8883d-3ded-4b53-aa4e-1fe5f9483300": {},
				"e991b2de-8303-4a35-b7d6-ed6dd5dfa494": {},
				"e6397315-9368-4695-a68b-bbf10fb698b5": {},
				"0a7913ab-dbb5-4166-8b8d-e2321bfce70b": {},
				"86fe74d1-2609-429d-9589-6d6067a01c05": {},
				"a814e5e0-d0d0-45f9-b95f-8df8d2e9f360": {},
				"d7f84d5e-51d6-4950-91a9-2c329accf477": {},
				"73bfa757-e343-4c7d-bedb-702ede020675": {},
				"ab93c5bc-8786-4995-9c55-35857e4d7e44": {},
				"e37c7e31-0f0e-41e3-9e73-0478e12bc193": {},
				"c9e11741-0c84-4df0-8c04-1407eeec96c3": {},
				"e7d98638-c853-428f-be31-6cfd9859ec22": {},
				"611e67af-9a5d-4691-aed5-1b276d744d36": {},
				"5f74f6a3-0fa1-4356-b601-4683da11bca7": {},
				"728ede5e-4e01-43b3-a4bc-46bc66214a72": {},
				"393519a7-cc17-4652-a9a2-6c013a952362": {},
				"ac854a89-1215-4526-b883-1eb1a12fc8d0": {},
				"2b074c4b-8ed3-48c6-99b1-412152fd3afa": {},
				"2a7b7900-4e54-4c21-9453-3f66d317cd6d": {},
				"7cc4706f-9aa6-423c-80cd-6956d224203c": {},
				"ef0e271b-956a-427e-a278-81d796711992": {},
				"4807ed1e-6731-48a1-90d9-215a9ee04170": {},
				"ddde8dbf-7fdd-4587-8d95-46fe4b51a385": {},
				"bcb28841-f390-4b9d-a5f6-3de6cf55526c": {},
				"e6868c9d-7ca3-40a1-bcc7-95dc7f97cb66": {},
				"8ca168a6-1c72-408c-9f92-7023e5a4afce": {},
				"7f1c22a8-e0da-4cba-b6b6-8dbc9de8570a": {},
				"5f373b91-e77b-4650-86a8-48a8b4e306a0": {}
			}
		},
		"dca41d69-f0d9-44fb-b4e8-2a721adea6a3": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/ApproveCarOrder/SampleStartPayload.json",
			"id": "default-start-context"
		},
		"cf82e094-5446-4ba2-9c50-9b2921406a29": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -412,
			"y": 96,
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
			"points": "-396,114.375 -245.75852713406152,114.375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "96b8883d-3ded-4b53-aa4e-1fe5f9483300",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"96b8883d-3ded-4b53-aa4e-1fe5f9483300": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -295.7585271340615,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "9ff2affb-12ce-4ee9-86af-ffd333af04ac"
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
		"e37c7e31-0f0e-41e3-9e73-0478e12bc193": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 952.1713420541212,
			"y": 184.453125,
			"width": 100,
			"height": 60,
			"object": "7d201c7d-604b-4b0c-8f25-051e3323bdf6"
		},
		"c9e11741-0c84-4df0-8c04-1407eeec96c3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1102.1713420541212,
			"y": 184.453125,
			"width": 100,
			"height": 60,
			"object": "920c82ab-476d-4ae9-834f-e558a0054ae6"
		},
		"e7d98638-c853-428f-be31-6cfd9859ec22": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1002.1713420541212,214.453125 1152.1713420541212,214.453125",
			"sourceSymbol": "e37c7e31-0f0e-41e3-9e73-0478e12bc193",
			"targetSymbol": "c9e11741-0c84-4df0-8c04-1407eeec96c3",
			"object": "e80b4f89-610d-4d4c-95a3-d26770b90cf4"
		},
		"611e67af-9a5d-4691-aed5-1b276d744d36": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1152.1713420541212,214.453125 1286.9213420541212,214.453125",
			"sourceSymbol": "c9e11741-0c84-4df0-8c04-1407eeec96c3",
			"targetSymbol": "7cc4706f-9aa6-423c-80cd-6956d224203c",
			"object": "bc8b5b72-e428-443a-97e6-7c412e09e576"
		},
		"5f74f6a3-0fa1-4356-b601-4683da11bca7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 945.1713420541212,
			"y": -20.546875,
			"width": 100,
			"height": 60,
			"object": "9e7a9224-6986-4e6a-bf9d-619c42a8b263"
		},
		"728ede5e-4e01-43b3-a4bc-46bc66214a72": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "995.1713420541212,9.21484375 1156.3356710270605,9.21484375",
			"sourceSymbol": "5f74f6a3-0fa1-4356-b601-4683da11bca7",
			"targetSymbol": "393519a7-cc17-4652-a9a2-6c013a952362",
			"object": "95f3ae2b-613c-45ee-8d5f-98b436985162"
		},
		"393519a7-cc17-4652-a9a2-6c013a952362": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1106.3356710270605,
			"y": -21.0234375,
			"width": 100,
			"height": 60,
			"object": "b3c98fd5-5000-4e1a-b3dc-8a4c05015528"
		},
		"ac854a89-1215-4526-b883-1eb1a12fc8d0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1156.3356710270605,8.857421875 1308.9178355135302,8.857421875",
			"sourceSymbol": "393519a7-cc17-4652-a9a2-6c013a952362",
			"targetSymbol": "2b074c4b-8ed3-48c6-99b1-412152fd3afa",
			"object": "d661dc89-3088-44d0-8ef6-c5ca7cc86803"
		},
		"2b074c4b-8ed3-48c6-99b1-412152fd3afa": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1258.9178355135302,
			"y": -21.26171875,
			"width": 100,
			"height": 60,
			"object": "a4c0f426-f2d1-4ab5-842c-1a2b43510928"
		},
		"2a7b7900-4e54-4c21-9453-3f66d317cd6d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1308.9178355135302,8.619140625 1428.5,8.619140625",
			"sourceSymbol": "2b074c4b-8ed3-48c6-99b1-412152fd3afa",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "c6ad7d91-5ea4-4462-9119-b10919be302d"
		},
		"7cc4706f-9aa6-423c-80cd-6956d224203c": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1236.9213420541212,
			"y": 184.453125,
			"width": 100,
			"height": 60,
			"object": "ce59580a-1896-44c5-a6f7-83e79a45804d"
		},
		"ef0e271b-956a-427e-a278-81d796711992": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1286.9213420541212,214.453125 1388.6713420541212,214.453125",
			"sourceSymbol": "7cc4706f-9aa6-423c-80cd-6956d224203c",
			"targetSymbol": "73bfa757-e343-4c7d-bedb-702ede020675",
			"object": "ecf15449-dc08-43a6-9cfd-db52ba9fe90b"
		},
		"4807ed1e-6731-48a1-90d9-215a9ee04170": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -13.629263567030762,
			"y": 87.125,
			"width": 100,
			"height": 60,
			"object": "14a6eb6e-a4ce-4b54-8f30-0bfd70fb0748"
		},
		"ddde8dbf-7fdd-4587-8d95-46fe4b51a385": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 136.37073643296924,
			"y": 87.125,
			"width": 100,
			"height": 60,
			"object": "b5f6d6a6-51fb-449c-bcbe-7124d4c48fa2"
		},
		"bcb28841-f390-4b9d-a5f6-3de6cf55526c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "36.37073643296924,117.125 186.37073643296924,117.125",
			"sourceSymbol": "4807ed1e-6731-48a1-90d9-215a9ee04170",
			"targetSymbol": "ddde8dbf-7fdd-4587-8d95-46fe4b51a385",
			"object": "8633fd6f-6d87-4001-b2f2-f3f233f146ff"
		},
		"e6868c9d-7ca3-40a1-bcc7-95dc7f97cb66": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 286.37073643296924,
			"y": 87.125,
			"width": 100,
			"height": 60,
			"object": "e3551e94-52ab-4cac-a1e8-f7b826301978"
		},
		"8ca168a6-1c72-408c-9f92-7023e5a4afce": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "186.37073643296924,117.125 336.37073643296924,117.125",
			"sourceSymbol": "ddde8dbf-7fdd-4587-8d95-46fe4b51a385",
			"targetSymbol": "e6868c9d-7ca3-40a1-bcc7-95dc7f97cb66",
			"object": "56ae5e70-41ac-42e8-8e35-5e23f841383c"
		},
		"7f1c22a8-e0da-4cba-b6b6-8dbc9de8570a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "336.37073643296924,117.21875 524.1853682164847,117.21875",
			"sourceSymbol": "e6868c9d-7ca3-40a1-bcc7-95dc7f97cb66",
			"targetSymbol": "e991b2de-8303-4a35-b7d6-ed6dd5dfa494",
			"object": "488de20b-34a3-43b4-bd28-3c679a2f3c61"
		},
		"5f373b91-e77b-4650-86a8-48a8b4e306a0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-245.75852713406152,116.9375 -13.129263567030762,116.9375",
			"sourceSymbol": "96b8883d-3ded-4b53-aa4e-1fe5f9483300",
			"targetSymbol": "4807ed1e-6731-48a1-90d9-215a9ee04170",
			"object": "87e78ce4-29ab-44d0-afd7-57fdadbec866"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"maildefinition": 4,
			"sequenceflow": 25,
			"startevent": 1,
			"endevent": 2,
			"usertask": 1,
			"servicetask": 4,
			"scripttask": 6,
			"mailtask": 5,
			"exclusivegateway": 2
		},
		"75ac466c-c058-43f8-9dda-f386a04c227f": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "${context.Client.value[0].email}",
			"subject": "Order approved",
			"reference": "/webcontent/ApproveCarOrder/SuccessfulOrderEmail.html",
			"id": "maildefinition3"
		},
		"40a412dd-7a47-46ab-8f92-0e3985e0908d": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition4",
			"to": "${context.Client.value[0].email}",
			"subject": "Order rejected",
			"reference": "/webcontent/ApproveCarOrder/RejectedOrderEmail.html",
			"id": "maildefinition4"
		}
	}
}