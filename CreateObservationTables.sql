CREATE TABLE fhirdb.observation_main
	(
	 [observation_id] nvarchar(4000),
	 [resourceType] nvarchar(4000),
	 [status] nvarchar(4000),
	 [issued] nvarchar(4000),
	 [effectiveDateTime] nvarchar(4000),
	 [valueString] nvarchar(4000),
	 [patient_ID] nvarchar(4000),
	 [encounter_reference] nvarchar(4000),
	 [valueQuantity_code] nvarchar(4000),
	 [valueQuantity_system] nvarchar(4000),
	 [valueQuantity_unit] nvarchar(4000),
	 [valueQuantity_value] float
	)
WITH
	(
	DISTRIBUTION = HASH([patient_ID]),
	 CLUSTERED COLUMNSTORE INDEX
	)
GO

CREATE TABLE fhirdb.observation_code
	(
	 [observation_id] nvarchar(4000),
	 [code_text] nvarchar(4000),
	 [code_coding_code] nvarchar(4000),
	 [code_coding_display] nvarchar(4000),
	 [code_coding_system] nvarchar(4000)
	)
WITH
	(
	DISTRIBUTION = HASH([observation_id]),
	 CLUSTERED COLUMNSTORE INDEX
	)
GO

CREATE TABLE fhirdb.observation_component
	(
	 [observation_id] nvarchar(4000),
	 [component_code_text] nvarchar(4000),
	 [component_valueQuantity_code] nvarchar(4000),
	 [component_valueQuantity_system] nvarchar(4000),
	 [component_valueQuantity_unit] nvarchar(4000),
	 [component_valueQuantity_value] float,
	 [component_code_coding_code] nvarchar(4000),
	 [component_code_coding_display] nvarchar(4000),
	 [component_code_coding_system] nvarchar(4000)
	)
WITH
	(
	DISTRIBUTION = HASH([observation_id]),
	 CLUSTERED COLUMNSTORE INDEX
	)
GO

CREATE TABLE fhirdb.observation_category
	(
	 [observation_id] nvarchar(4000),
	 [category_coding_code] nvarchar(4000),
	 [category_coding_display] nvarchar(4000),
	 [category_coding_system] nvarchar(4000)
	)
WITH
	(
	DISTRIBUTION = HASH([observation_id]),
	 CLUSTERED COLUMNSTORE INDEX
	)
GO