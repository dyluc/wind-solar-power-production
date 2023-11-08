import requests

LOCATIONS_BASE_URL = 'https://api.open-meteo.com/v1/meteofrance'

response = requests.get(
    url=LOCATIONS_BASE_URL
)

print(response.json())
