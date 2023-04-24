SELECT TOP 100
    jsonContent,
    JSON_VALUE(jsonContent, '$.resourceType') AS resourceType,
    JSON_VALUE(jsonContent, '$.id') AS id
FROM
    OPENROWSET(
        BULK 'https://synapsehackst.dfs.core.windows.net/bronze/incremental_data/claim/year=2021/*/*/*.json',
        FORMAT = 'CSV',
        FIELDQUOTE = '0x0b',
        FIELDTERMINATOR ='0x0b',
        ROWTERMINATOR = '0x0b'
    )
    WITH (
        jsonContent varchar(MAX)
    ) AS [result]
