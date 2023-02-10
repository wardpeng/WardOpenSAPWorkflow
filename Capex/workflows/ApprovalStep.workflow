{
	"contents": {
		"610f7ec3-f996-4f1b-ab9b-d0d3563cbc5d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "approvalstep",
			"subject": "Approval Step",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "RequestId",
				"label": "RequestId",
				"type": "string",
				"value": "${context.RequestId}"
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "TotalCost",
				"label": "TotalCost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "CAPEX",
				"label": "CAPEX",
				"type": "string",
				"value": "${context.Investment.CAPEX}"
			}, {
				"id": "OPEX",
				"label": "OPEX",
				"type": "string",
				"value": "${context.Investment.OPEX}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}, {
				"id": "approvalStatus",
				"label": "approvalStatus\t",
				"type": "string",
				"value": "${context.internal.approvalStatus}"
			}],
			"name": "ApprovalStep",
			"documentation": "Approval Step",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start Approval Step"
				},
				"99b3c891-e2bf-4c6d-9a19-500ec53193bf": {
					"name": "EndEvent2"
				},
				"b98f77f1-f39b-48fe-9ae5-a962e6f2141e": {
					"name": "End Approval Step"
				}
			},
			"activities": {
				"0c744fb9-a956-4401-bcd0-e8b905bd147d": {
					"name": "Prepare Approval"
				},
				"1989a090-f5cb-4169-8c27-8e0ab1b4c7ee": {
					"name": "Get Approvers"
				},
				"f6bc970f-3b1e-43da-a8f5-ea0dc40d26f0": {
					"name": "Process Approver Details"
				},
				"e37f6aaa-e3dd-40b3-9086-3ca9438f1e1a": {
					"name": "Approval Needed?"
				},
				"0b2b7e58-46f5-49e3-9608-eeab54e9e761": {
					"name": "Approval Task"
				},
				"59607ff3-3c9c-42ce-b889-31d8286c0b3e": {
					"name": "Process Approval Result"
				},
				"c4a65531-0217-4459-9c49-7641ec90949a": {
					"name": "Approval Decision"
				},
				"1205a7d5-2d5a-4262-b994-f8eb3f5ec4ea": {
					"name": "Rework Approval Request"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"0bce4314-7b0e-45be-bbdb-71f735b4f04e": {
					"name": "SequenceFlow2"
				},
				"57f773f7-27ca-4685-8388-5b92f8ac41ac": {
					"name": "SequenceFlow3"
				},
				"6834ed3f-a45e-4748-b6e2-77932aaa86ec": {
					"name": "SequenceFlow4"
				},
				"1a507f1d-8734-4c59-bb8f-ce0cf50d1633": {
					"name": "Yes"
				},
				"dc4a2e04-87b7-4d9f-9ce9-c01e454d8440": {
					"name": "SequenceFlow6"
				},
				"2086bdb7-8081-45db-87b9-106d6b7335d3": {
					"name": "SequenceFlow7"
				},
				"a6318ebd-1939-4c50-9ca0-650fc7ac8893": {
					"name": "Rejected"
				},
				"4d49f087-0e79-4778-85f2-163ae9b499e1": {
					"name": "SequenceFlow10"
				},
				"d8f9c869-0bef-4d5b-b11b-628135f944db": {
					"name": "Rework"
				},
				"cf055a66-ec0c-428e-9511-9827b6b69538": {
					"name": "Accepted"
				},
				"ed9cc81b-d0d7-4d3f-be97-ed47c80ccad2": {
					"name": "No"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start Approval Step",
			"sampleContextRefs": {
				"6222177c-635b-4437-a889-b277a3977b08": {}
			}
		},
		"99b3c891-e2bf-4c6d-9a19-500ec53193bf": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2",
			"eventDefinitions": {
				"d320d2ac-fd42-47f8-97d3-4cd48586a319": {}
			}
		},
		"b98f77f1-f39b-48fe-9ae5-a962e6f2141e": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "End Approval Step"
		},
		"0c744fb9-a956-4401-bcd0-e8b905bd147d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApprovalStep/PrepareApproval.js",
			"id": "scripttask1",
			"name": "Prepare Approval"
		},
		"1989a090-f5cb-4169-8c27-8e0ab1b4c7ee": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"destinationSource": "consumer",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.internal.rulesPayload}",
			"responseVariable": "${context.internal.ruleresult}",
			"id": "servicetask1",
			"name": "Get Approvers"
		},
		"f6bc970f-3b1e-43da-a8f5-ea0dc40d26f0": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApprovalStep/ProcessApproverDetails.js",
			"id": "scripttask2",
			"name": "Process Approver Details"
		},
		"e37f6aaa-e3dd-40b3-9086-3ca9438f1e1a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval Needed?",
			"default": "ed9cc81b-d0d7-4d3f-be97-ed47c80ccad2"
		},
		"0b2b7e58-46f5-49e3-9608-eeab54e9e761": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for Capital Expenditure Request \"${context.Title}\" in your role as ${context.role}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.internal.step.approver.UserId}",
			"recipientGroups": "${context.internal.step.approver.GroupId}",
			"formReference": "/forms/ApprovalStep/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Task"
		},
		"59607ff3-3c9c-42ce-b889-31d8286c0b3e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApprovalStep/ProcessApprovalResult.js",
			"id": "scripttask3",
			"name": "Process Approval Result"
		},
		"c4a65531-0217-4459-9c49-7641ec90949a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval Decision",
			"default": "a6318ebd-1939-4c50-9ca0-650fc7ac8893"
		},
		"1205a7d5-2d5a-4262-b994-f8eb3f5ec4ea": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework required for CapEx Request \"${context.Title}\"",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.Requester.UserId}, ${info.startedBy}",
			"formReference": "/forms/ApprovalStep/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Rework Approval Request"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "0c744fb9-a956-4401-bcd0-e8b905bd147d"
		},
		"0bce4314-7b0e-45be-bbdb-71f735b4f04e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "0c744fb9-a956-4401-bcd0-e8b905bd147d",
			"targetRef": "1989a090-f5cb-4169-8c27-8e0ab1b4c7ee"
		},
		"57f773f7-27ca-4685-8388-5b92f8ac41ac": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "1989a090-f5cb-4169-8c27-8e0ab1b4c7ee",
			"targetRef": "f6bc970f-3b1e-43da-a8f5-ea0dc40d26f0"
		},
		"6834ed3f-a45e-4748-b6e2-77932aaa86ec": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "f6bc970f-3b1e-43da-a8f5-ea0dc40d26f0",
			"targetRef": "e37f6aaa-e3dd-40b3-9086-3ca9438f1e1a"
		},
		"1a507f1d-8734-4c59-bb8f-ce0cf50d1633": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.internal.step.isRequired}",
			"id": "sequenceflow5",
			"name": "Yes",
			"sourceRef": "e37f6aaa-e3dd-40b3-9086-3ca9438f1e1a",
			"targetRef": "0b2b7e58-46f5-49e3-9608-eeab54e9e761"
		},
		"dc4a2e04-87b7-4d9f-9ce9-c01e454d8440": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "0b2b7e58-46f5-49e3-9608-eeab54e9e761",
			"targetRef": "59607ff3-3c9c-42ce-b889-31d8286c0b3e"
		},
		"2086bdb7-8081-45db-87b9-106d6b7335d3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "59607ff3-3c9c-42ce-b889-31d8286c0b3e",
			"targetRef": "c4a65531-0217-4459-9c49-7641ec90949a"
		},
		"a6318ebd-1939-4c50-9ca0-650fc7ac8893": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "Rejected",
			"sourceRef": "c4a65531-0217-4459-9c49-7641ec90949a",
			"targetRef": "99b3c891-e2bf-4c6d-9a19-500ec53193bf"
		},
		"4d49f087-0e79-4778-85f2-163ae9b499e1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "1205a7d5-2d5a-4262-b994-f8eb3f5ec4ea",
			"targetRef": "0c744fb9-a956-4401-bcd0-e8b905bd147d"
		},
		"d8f9c869-0bef-4d5b-b11b-628135f944db": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"rework\"}",
			"id": "sequenceflow11",
			"name": "Rework",
			"sourceRef": "c4a65531-0217-4459-9c49-7641ec90949a",
			"targetRef": "1205a7d5-2d5a-4262-b994-f8eb3f5ec4ea"
		},
		"cf055a66-ec0c-428e-9511-9827b6b69538": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"approve\"}",
			"id": "sequenceflow12",
			"name": "Accepted",
			"sourceRef": "c4a65531-0217-4459-9c49-7641ec90949a",
			"targetRef": "b98f77f1-f39b-48fe-9ae5-a962e6f2141e"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"317a5fd3-3668-472e-9a50-349986e80a0e": {},
				"c5a56d94-be02-4d9c-9372-1dc4b82adfbb": {},
				"bc32174e-fe65-477b-8408-c2d44469c7a1": {},
				"e5583b16-fd07-47b5-8f6f-e050c56c2255": {},
				"00ea7eb9-119f-4e09-8656-1cdbbce86079": {},
				"43ab296e-bf3f-4db2-bebe-72458616adeb": {},
				"9efa92a4-5b29-493f-9d93-6047a9fc406e": {},
				"39bb4216-7445-4bca-8885-0e262cc4f006": {},
				"8fde598a-0408-4e04-8a62-a75cae37201b": {},
				"6cdc394a-20ad-4f77-95da-6e7903e10dcf": {},
				"c86f696c-0c41-40e3-8052-cb5a0e46bb90": {},
				"d8129e6a-ab09-4ef2-be7a-d159f5cce7d8": {},
				"08a7e0a7-f6b7-43bb-879d-847de82c1e69": {},
				"03db1499-8a80-4388-ab98-78f5937684a3": {},
				"4b13ae31-dda7-4cc5-826a-862de16ecdad": {},
				"9cedcac7-260e-4378-9c5c-fbf8a045d68e": {},
				"cf034d18-e468-4a45-a5eb-8d5b24a489fd": {},
				"71d535a1-eb02-4aaf-9e85-6474c19baae5": {},
				"c4531eba-1898-4ffa-aa29-bb2eb6ae70ea": {},
				"0cc27503-f85a-4d9b-a797-54e26ec319f8": {},
				"0f27af13-cd7c-463d-b1f3-363d101a6ba1": {}
			}
		},
		"6222177c-635b-4437-a889-b277a3977b08": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/ApprovalStep/CapexSampleStartPayload.json",
			"id": "default-start-context"
		},
		"d320d2ac-fd42-47f8-97d3-4cd48586a319": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 56,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,72 94,72",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "317a5fd3-3668-472e-9a50-349986e80a0e",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"317a5fd3-3668-472e-9a50-349986e80a0e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "0c744fb9-a956-4401-bcd0-e8b905bd147d"
		},
		"c5a56d94-be02-4d9c-9372-1dc4b82adfbb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,72 244,72",
			"sourceSymbol": "317a5fd3-3668-472e-9a50-349986e80a0e",
			"targetSymbol": "bc32174e-fe65-477b-8408-c2d44469c7a1",
			"object": "0bce4314-7b0e-45be-bbdb-71f735b4f04e"
		},
		"bc32174e-fe65-477b-8408-c2d44469c7a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 244,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "1989a090-f5cb-4169-8c27-8e0ab1b4c7ee"
		},
		"e5583b16-fd07-47b5-8f6f-e050c56c2255": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,72 394,72",
			"sourceSymbol": "bc32174e-fe65-477b-8408-c2d44469c7a1",
			"targetSymbol": "00ea7eb9-119f-4e09-8656-1cdbbce86079",
			"object": "57f773f7-27ca-4685-8388-5b92f8ac41ac"
		},
		"00ea7eb9-119f-4e09-8656-1cdbbce86079": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 394,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "f6bc970f-3b1e-43da-a8f5-ea0dc40d26f0"
		},
		"43ab296e-bf3f-4db2-bebe-72458616adeb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "494,72 544,72",
			"sourceSymbol": "00ea7eb9-119f-4e09-8656-1cdbbce86079",
			"targetSymbol": "9efa92a4-5b29-493f-9d93-6047a9fc406e",
			"object": "6834ed3f-a45e-4748-b6e2-77932aaa86ec"
		},
		"9efa92a4-5b29-493f-9d93-6047a9fc406e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 544,
			"y": 51,
			"object": "e37f6aaa-e3dd-40b3-9086-3ca9438f1e1a"
		},
		"39bb4216-7445-4bca-8885-0e262cc4f006": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "586,72 636,72",
			"sourceSymbol": "9efa92a4-5b29-493f-9d93-6047a9fc406e",
			"targetSymbol": "8fde598a-0408-4e04-8a62-a75cae37201b",
			"object": "1a507f1d-8734-4c59-bb8f-ce0cf50d1633"
		},
		"8fde598a-0408-4e04-8a62-a75cae37201b": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 636,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "0b2b7e58-46f5-49e3-9608-eeab54e9e761"
		},
		"6cdc394a-20ad-4f77-95da-6e7903e10dcf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "736,72 786,72",
			"sourceSymbol": "8fde598a-0408-4e04-8a62-a75cae37201b",
			"targetSymbol": "c86f696c-0c41-40e3-8052-cb5a0e46bb90",
			"object": "dc4a2e04-87b7-4d9f-9ce9-c01e454d8440"
		},
		"c86f696c-0c41-40e3-8052-cb5a0e46bb90": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 786,
			"y": 42,
			"width": 100,
			"height": 60,
			"object": "59607ff3-3c9c-42ce-b889-31d8286c0b3e"
		},
		"d8129e6a-ab09-4ef2-be7a-d159f5cce7d8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "886,72 936,72",
			"sourceSymbol": "c86f696c-0c41-40e3-8052-cb5a0e46bb90",
			"targetSymbol": "08a7e0a7-f6b7-43bb-879d-847de82c1e69",
			"object": "2086bdb7-8081-45db-87b9-106d6b7335d3"
		},
		"08a7e0a7-f6b7-43bb-879d-847de82c1e69": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 936,
			"y": 51,
			"object": "c4a65531-0217-4459-9c49-7641ec90949a"
		},
		"03db1499-8a80-4388-ab98-78f5937684a3": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1061.999998807907,
			"y": 56,
			"width": 35,
			"height": 35,
			"object": "99b3c891-e2bf-4c6d-9a19-500ec53193bf"
		},
		"4b13ae31-dda7-4cc5-826a-862de16ecdad": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "978,72.75 1061.999998807907,72.75",
			"sourceSymbol": "08a7e0a7-f6b7-43bb-879d-847de82c1e69",
			"targetSymbol": "03db1499-8a80-4388-ab98-78f5937684a3",
			"object": "a6318ebd-1939-4c50-9ca0-650fc7ac8893"
		},
		"9cedcac7-260e-4378-9c5c-fbf8a045d68e": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": -79,
			"width": 100,
			"height": 60,
			"object": "1205a7d5-2d5a-4262-b994-f8eb3f5ec4ea"
		},
		"cf034d18-e468-4a45-a5eb-8d5b24a489fd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "144,-49 144,46",
			"sourceSymbol": "9cedcac7-260e-4378-9c5c-fbf8a045d68e",
			"targetSymbol": "317a5fd3-3668-472e-9a50-349986e80a0e",
			"object": "4d49f087-0e79-4778-85f2-163ae9b499e1"
		},
		"71d535a1-eb02-4aaf-9e85-6474c19baae5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "956,72 956,-47 176,-47",
			"sourceSymbol": "08a7e0a7-f6b7-43bb-879d-847de82c1e69",
			"targetSymbol": "9cedcac7-260e-4378-9c5c-fbf8a045d68e",
			"object": "d8f9c869-0bef-4d5b-b11b-628135f944db"
		},
		"c4531eba-1898-4ffa-aa29-bb2eb6ae70ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 935.5,
			"y": 196.5,
			"width": 35,
			"height": 35,
			"object": "b98f77f1-f39b-48fe-9ae5-a962e6f2141e"
		},
		"0cc27503-f85a-4d9b-a797-54e26ec319f8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "957,72 957,207",
			"sourceSymbol": "08a7e0a7-f6b7-43bb-879d-847de82c1e69",
			"targetSymbol": "c4531eba-1898-4ffa-aa29-bb2eb6ae70ea",
			"object": "cf055a66-ec0c-428e-9511-9827b6b69538"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"sequenceflow": 14,
			"startevent": 1,
			"endevent": 3,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 3,
			"exclusivegateway": 2
		},
		"ed9cc81b-d0d7-4d3f-be97-ed47c80ccad2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "No",
			"sourceRef": "e37f6aaa-e3dd-40b3-9086-3ca9438f1e1a",
			"targetRef": "b98f77f1-f39b-48fe-9ae5-a962e6f2141e"
		},
		"0f27af13-cd7c-463d-b1f3-363d101a6ba1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "566,72 566,217 944,217",
			"sourceSymbol": "9efa92a4-5b29-493f-9d93-6047a9fc406e",
			"targetSymbol": "c4531eba-1898-4ffa-aa29-bb2eb6ae70ea",
			"object": "ed9cc81b-d0d7-4d3f-be97-ed47c80ccad2"
		}
	}
}