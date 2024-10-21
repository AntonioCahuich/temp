LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/AntonioCahuich/temp/refs/heads/main/uscities-1.csv" AS row
MERGE (c:City {id: row.id})
SET 
    c.city = row.city,
    c.city_ascii = row.city_ascii,
    c.state_id = row.state_id,
    c.state_name = row.state_name,
    c.county_fips = row.county_fips,
    c.county_name = row.county_name,
    c.lat = toFloat(row.lat),
    c.lng = toFloat(row.lng),
    c.population = toInteger(row.population),
    c.density = toFloat(row.density),
    c.source = row.source,
    c.military = row.military,
    c.incorporated = row.incorporated,
    c.timezone = row.timezone,
    c.ranking = toInteger(row.ranking),
    c.zips = row.zips;
