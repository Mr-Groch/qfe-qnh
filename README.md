# QFE & QNH Calculator

Calculate QFE and/or QNH value from QNH and/or QFE, Altitude above sea level and Temperature (15°C is a standard temperature used in aviation).

Altitude can be automatically provided from external elevation API, like:
* [https://open-elevation.com](https://open-elevation.com) (can be slow)
* [https://elevation-api.io](https://elevation-api.io) (free version has very low accuraccy - 5km)
* [https://open.mapquestapi.com](https://open.mapquestapi.com) (requires free API key)

Latitude and longitude needed for elevation API are provided from browser geolocalization (HTTPS needed for some browsers).

![Screenshot](screenshot.png?raw=true)

Mentioned above elevation API providers can be chosen in index.html, by commenting/uncommenting desired .get(), then() lines:

```js
                // api.open-elevation.com - can be slow, but free and accurate (~30m)
                .get(`https://api.open-elevation.com/api/v1/lookup?locations=${input.lat},${input.lon}`)
                .then(response => (app.altitude = response.data.results[0].elevation))
                
                // elevation-api.io - fast, but free version has very low accuraccy (5km)
                //.get(`https://elevation-api.io/api/elevation?points=${input.lat},${input.lon}`)
                //.then(response => (app.altitude = response.data.elevations[0].elevation))
                
                // open.mapquestapi.com - fast, free and accurate (~30m)  - developr API key is needed (generate at https://developer.mapquest.com/)
                //.get(`https://open.mapquestapi.com/elevation/v1/profile?key=YOUR_API_KEY_HERE&latLngCollection=${input.lat},${input.lon}`)
                //.then(response => (app.altitude = response.data.elevationProfile[0].height))
```

*note:* you need developer API key from [MapQuest](https://developer.mapquest.com/) if you want to use MapQuest Elevation API. Change `YOUR_API_KEY_HERE` in index.html.

------
Based on work by Mathias Djärv - Calculate QFE value from QNH + Altitude (https://github.com/mdjarv/qfe)
