SELECT 
    patient_ID as patient_id
    ,count(patient_ID) as counts
FROM [fhirdb].[dbo].[claim_main]  as claims
LEFT join [fhirdb].[dbo].[patientidentifier] as patient 
    on claims.patient_ID = patient.patient_id
WHERE 
    patient.gender = 'male'
    AND ((YEAR(GETDATE()) - YEAR(CONVERT(date,patient.birthDate))) > 18 
    AND (YEAR(GETDATE()) - YEAR(CONVERT(date,patient.birthDate)))< 25) 
    AND YEAR(claims.created) > 2020
GROUP BY patient_ID