CREATE TABLE fhirdb.Claim_main
	(
	 [claim_id] nvarchar(4000),
	 [resourceType] nvarchar(4000),
	 [status] nvarchar(4000),
	 [created] nvarchar(4000),
	 [isuse] nvarchar(4000),
	 [billablePeriod_end] nvarchar(4000),
	 [billablePeriod_start] nvarchar(4000),
	 [patient_display] nvarchar(4000),
	 [patient_ID] nvarchar(4000),
	 [prescription_reference] nvarchar(4000),
	 [provider_display] nvarchar(4000),
	 [provider_reference] nvarchar(4000),
	 [total_currency] nvarchar(4000),
	 [total_value] float
	)
WITH
	(
	DISTRIBUTION = HASH([patient_ID]),
	 CLUSTERED COLUMNSTORE INDEX
	)
GO

CREATE  TABLE fhirdb.claim_diagnosis (
	[claim_id] nvarchar(4000),
	[diagnosis_sequence] bigint,
	[diagnosis_diagnosisReference_reference] nvarchar(4000)
	)
	WITH (
	DISTRIBUTION = HASH([claim_id]),
	 CLUSTERED COLUMNSTORE INDEX
	)
GO

CREATE  TABLE fhirdb.claim_insurance (
	[claim_id] nvarchar(4000),
	[insurance_focal] bit,
	[insurance_sequence] bigint,
	[insurance_coverage_display] nvarchar(4000)
	)
	WITH (
	DISTRIBUTION = HASH([claim_id]),
	 CLUSTERED COLUMNSTORE INDEX
	)
GO

CREATE  TABLE fhirdb.claim_procedure (
	[claim_id] nvarchar(4000),
	[procedure_sequence] bigint,
	[procedure_procedureReference_reference] nvarchar(4000)
	)
	WITH (
	DISTRIBUTION = HASH([claim_id]),
	 CLUSTERED COLUMNSTORE INDEX
	)
GO