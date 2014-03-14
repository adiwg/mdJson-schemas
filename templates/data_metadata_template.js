{
    "contacts": [ // multi-purpose; to use provide id and role
        {
            "contactId": "",
            "individualName": "",
            "organizationName": "",
            "positionName": "",
            "onlineResource": [
                {
                    "linkage": "",
					"doi": "", // ADIwg extension
                    "name": "",
                    "description": "",
					"function": ""
                }
            ],
			"contactInstructions": "",
            "voice": [
                {
                    "phoneName": "",
                    "phoneNumber": ""
                }
			],
            "fax": [
                {
                    "phoneName": "",
                    "phoneNumber": ""
                }
            ],
            "address": {
                "deliveryPoint": [""],
                "city": "",
                "administrativeArea": "",
                "postalCode": "",
                "country": "",
                "electronicMailAddress": [""]
			}
        }
    ],
    "metadata": {
        "fileIdentifier": "",
        "parentIdentifier": "",
        "hierarchyLevel": [""],
        "contact": [
            {
                "contactId": "",
                "role": ""
            }
        ],
        "dateStamp": "",
        "dataSetURI": "",
        "spatialReference": [""],
        "identificationInfo": {
            "citation": {
                "title": "",
                "date": [
                    {
                        "date": "",
                        "dateType": ""
                    }
                ],
                "edition": "",
                "citedResponsibleParty": [
                    {
                        "contactId": "",
                        "role": ""
                    }
                ],
                "presentationForm": "",
                "isbn": "",
                "issn": ""
            },
            "pointOfContact": [
                {
                    "contactId": "",
                    "role": ""
                }
            ],
            "abstract": "",
            "status": "",
            "language": [";"],
            "purpose": "",
            "credit": [""],
            "spatialRepresentation": [""],
            "topicCategory": [""],
            "environmentalDesc": "",
            "supplementalInfo": "",
            "resourceFormat": [
                {
                    "name": "",
                    "version": ""
                }
            ],
            "keywords": [
                {
                    "keyword": [""],
                    "keywordType": "",
                    "thesaurus": {
                        "thesaurusLink": "",
                        "citation": {
                            "title": "",
                            "date": [
                                {
                                    "date": "",
                                    "dateType": ""
                                }
                            ],
                            "edition": "",
                            "citedResponsibleParty": [
                                {
                                    "contactId": "",
                                    "role": ""
                                }
                            ],
                            "presentationForm": "",
                            "isbn": "",
                            "issn": ""
                        }
                    }
                }
            ],
            "resourceMaintenance": [
                {
                    "maintFreq": "",
                    "maintNote": [""],
					"contact": [
						{
							"contactId": "",
							"role": ""
						}
					]
                }
            ],
            "resourceSpecificUsage": [
                {
                    "specificUsage": "",
                    "userDeterminedLimitations": "",
                    "userContactInfo": [
                        {
                            "contactId": "",
                            "role": ""
                        }
                    ]
                }
            ],
            "graphicOverview": [
                {
                    "fileName": "",
                    "fileDescription": "",
                    "fileType": "",
                    "fileLink": ""  // ADIwg extension
                }
            ],
            "useLimitations": [""],
            "legalConstraints": [
                {
                    "accessConstraints": [""],
                    "useConstraints": [""],
                    "otherConstraints": [""]
                }
            ],
            "securityConstraints": [
                {
                    "classification": "",
                    "userNote": "",
                    "classSystem": "",
                    "handlingDescription": ""
                }
            ],
            "taxonomy": {
                "classSystem": [
                    {
                        "title": "",
                        "date": [
                            {
                                "date": "",
                                "dateType": ""
                            }
                        ],
						"edition": "",
                        "citedResponsibleParty": [
                            {
                                "contactId": "",
                                "role": ""
                            }
                        ],
						"presentationForm": "",
						"ISBN": "",
						"ISSN": ""
                    }
                ],
                "taxonGeneralScope": "",
                "observer": [
                    {
                        "contactId": "",
                        "role": ""
                    }
                ],
                "taxonomicProcedures": "",
                "voucher": {
                    "specimen": "",
                    "repository": {
                        "contactId": "",
                        "role": ""
                    }
                },
                "taxonClass": [
                    {
						"common": "",
                        "taxonRank": "",
                        "taxonValue": ""
					}
                ]
            },
            "spatialResolution": [
                {
                    "equivalentScale": 0000
                },
                {
                    "distance": 0000,
                    "uom": ""
                }
            ],
            "extent": [
				{
                    "description": "",
                    "geographicElement":[
                        {
                            "type": "Feature", // choose only one geometry {} per "Feature"
							"bbox":[
                                0000, // west longitude (numeric)
                                0000, // south latitude (numeric)
                                0000, // east longitude (numeric)
                                0000  // north latitude (numeric)
							],
                            "id": "",
                            "properties": {
                                "name": "",
                                "description": "",
                                "includesData": true,  // for polygons (default)
                                "date": [""],
                                "timeInstant": [
                                    {
                                        "id":"",
                                        "description": "",
                                        "timePosition": ""
                                    }
                                ],
                                "timePosition": [
                                    {
                                        "id":"",
                                        "description": "",
                                        "beginPosition": "",
                                        "endPosition": ""
                                    }
                                ],
                                "identifier": "",
                                "idAuthority": "", // URL of id issuing authority
                                "scope": "",
                                "initiativeType": ""
                            },
                            "geometry":{
                                "type": "Point",
                                "coordinates": [
									0000, // longitute
									0000, // latitude
									0000  // elevation (optional)
                                ]
                            },
                            "geometry": {
                                "type": "LineString",
                                "coordinates": [
                                    [
                                        0000, // longitute
                                        0000, // latitude
                                        0000  // elevation (optional)
                                    ],
                                    [
                                        0000, // longitute
                                        0000, // latitude
                                        0000  // elevation (optional)
                                    ]
                                ]
                            },
                            "geometry": {
                                "type":"Polygon",
                                "coordinates": [ // an array of linear rings
                                    [ // first ring is exterior boundary
                                        [
                                            0000, // longitute
                                            0000, // latitude
                                            0000  // elevation (optional)
                                        ],
                                        [
                                            0000, // longitute
                                            0000, // latitude
                                            0000  // elevation (optional)
                                        ]
                                    ],
                                    [ // subsequent rings are interior exclusion areas (optional)
                                        [
                                            0000, // longitute
                                            0000, // latitude
                                            0000  // elevation (optional)
                                        ],
                                        [
                                            0000, // longitute
                                            0000, // latitude
                                            0000  // elevation (optional)
                                        ]
                                    ]
                                ]
							},
                            "crs": {
                                "type": "", // type is either "name" or "link"
                                "properties": {
                                    "name": "", // if type = "name"
                                    "href": "", // if type = "link"
                                    "type": ""  // if type = "link"
                                }
                            }
                        },
                        {
                            "type": "FeatureCollection", // grouping of features, can be of any geometry type
                            "id": "",
                            "bbox": [
                                0000, // west longitude (numeric)
                                0000, // south latitude (numeric)
                                0000, // east longitude (numeric)
                                0000  // north latitude (numeric)
                            ],
                            "properties": {
                                "name":"",
                                "description": "",
                                "includesData": true // default
                            },
                            "crs": {
                                "type": "",
                                "properties": {
                                    "name": "", // if type = "name"
                                    "href": "", // if type = "link"
                                    "type": ""  // if type = "link"
                                }
                            },
                            "features":[{}] // include any feature(s)
                        }
                    ],
					"temporalElement": {
                        "date": [""],
                        "timeInstant": [
                            {
                                "id":"",
                                "description": "",
                                "timePosition": ""
                            }
                        ],
                        "timePosition": [
                            {
                                "id":"",
                                "description": "",
                                "beginPosition": "",
                                "endPosition": ""
                            }
                        ]
                    },
					"verticalElement":[
						{
							"minimumValue": 0000,
							"maximumValue": 0000,
							"verticalCRSTitle": "",
							"verticalCRSLink": ""
						}
					]
                }
            ]
        },
        "distributionInfo": [
            {
                "distributorContact": {
                    "contactId": "",
                    "role": ""
                },
                "distributionOrderProcess": [
                    {
                        "fees": "",
                        "plannedAvailabilityDateTime": "",
                        "orderingInstructions": "",
                        "turnaround": ""
                    }
                ],
                "distributorFormat": [
                    {
                        "name": "",
                        "version": ""
                    }
                ],
                "distributorTransferOptions": [
                    {
                        "online": [
                            {
                                "linkage": "",
								"doi": "", // ADIwg extension
                                "name": "",
                                "description": "",
                                "function": ""
                            }
                        ],
                        "offline": {
                            "name": "",
                            "mediumFormat": "",
                            "mediumNote": ""
                        }
                    }
                ]
            },
        ],
        "dataQualityInfo": [
            {
                "scope": "",
                "lineage": {
                    "statement": "",
                    "processStep": [
                        {
                            "stepId": "",
                            "description": "",
                            "rationale": "",
                            "dateTime": "",
                            "processor": [
                                {
                                    "contactId": "",
                                    "role": ""
                                }
                            ]
                        }
                    ],
                    "source": [
                        {
                            "description": "",
                            "citation": {
                                "title": "",
                                "date": [
                                    {
                                        "date": "",
                                        "dateType": ""
                                    }
                                ],
                                "edition": "",
                                "citedResponsibleParty": [
                                    {
                                        "contactId": "",
                                        "role": ""
                                    }
                                ],
                                "presentationForm": "",
                                "isbn": "",
                                "issn": ""
                            },
                            "processStep": [
                                {
                                    "stepId": "",
                                    "description": "",
									"rationale": "",
									"dateTime": "",
                                    "processor": [
                                        {
                                            "contactId": "",
                                            "role": ""
                                        }
                                    ]
                                }
                            ]
                        },
                        {
                            "description": ""
                        }
                    ]
                }
            }
        ],
        "metadataMaintenance": {
            "maintFreq": "",
            "maintNote": [""],
            "maintContact": [
                {
                    "contactId": "",
                    "role": ""
                }
            ]
        }
    }
}
