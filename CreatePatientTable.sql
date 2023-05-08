CREATE TABLE fhirdb.patientIdentifier (
	[patient_ID] nvarchar(4000),
	[birthDate] nvarchar(4000),
	[deceasedDateTime] nvarchar(4000),
	[gender] nvarchar(4000),
	[multipleBirthBoolean] bit,
	[multipleBirthInteger] bigint,
	[resourceType] nvarchar(4000),
	[div] nvarchar(4000),
	[status] nvarchar(4000),
	[text_div] nvarchar(4000),
	[text_status] nvarchar(4000)
	)
	WITH (
	DISTRIBUTION = HASH([patient_ID]),
	 CLUSTERED COLUMNSTORE INDEX
	)
GO