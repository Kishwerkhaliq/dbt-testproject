WITH adwords AS (
    SELECT
        date_date,
        paid_source,
        campaign_key,
        campaign_name,
        ads_cost,
        impression,
        click
    FROM {{ ref('stg_raw__adwords') }}
),
bing AS (
    SELECT
        date_date,
        paid_source,
        campaign_key,
        campaign_name,
        ads_cost,
        impression,
        click
    FROM {{ ref('stg_raw__bing') }}
),
facebook AS (
    SELECT
        date_date,
        paid_source,
        campaign_key,
        campaign_name,
        ads_cost,
        impression,
        click
    FROM {{ ref('stg_raw__facebook') }}
),
criteo AS (
    SELECT
        date_date,
        paid_source,
        campaign_key,
        campaign_name,
        ads_cost,
        impression,
        click
    FROM {{ ref('stg_raw__criteo') }}
)

SELECT * FROM adwords
UNION ALL
SELECT * FROM bing
UNION ALL
SELECT * FROM facebook
UNION ALL
SELECT * FROM criteo
