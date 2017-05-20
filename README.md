# QFE & QNH Calculator

Calculate QFE and/or QNH value from QNH and/or QFE, Altitude above sea level and Temperature (15°C is a standard temperature used in aviation).

Altitude can be automatically provided by [Algorithmia Gaploid/Elevation API](https://algorithmia.com/algorithms/Gaploid/Elevation) (Algorithmia API key needed). Latitude and longitude needed for elevation API are provided from browser geolocalization (HTTPS needed for some browsers).

If you want to use altitude from Algorithmia you need to enter your API key in index.html:

```javascriptvar
algorithmia = new Algorithmia.client("YOUR_API_KEY");
```

------
Based on work by Mathias Djärv - Calculate QFE value from QNH + Altitude (https://github.com/mdjarv/qfe)
