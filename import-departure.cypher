LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/AntonioCahuich/temp/refs/heads/main/2024-10-23.csv' AS row
CREATE (d:Departure {
  id: row.id,
  lat: toFloat(row.lat),
  lng: toFloat(row.lng),
  city: row.city,
  toLat: toFloat(row.toLat),
  toLng: toFloat(row.toLng),
  createdAt: datetime(row.createdAt),
  model: row.model,
  serviceType: row.serviceType
});
