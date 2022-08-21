class converter {
  double _temp = 0;

  converter({var temp = 0}) {
    _temp = temp;
  }

  double CelsiusToFahrenheit(double temp) {
    _temp = (temp * (9 / 5)) + (32);
    return _temp;
  }

  double CelsiusToKelvin(double temp) {
    _temp = (temp + 273.15);
    return _temp;
  }

  double FahrenheitToCelsius(double temp) {
    _temp = (temp - 32) * (5 / 9);
    return _temp;
  }

  double FahrenheitToKelvin(double temp) {
    _temp = (temp - 32) * (5 / 9) + 273.15;
    return _temp;
  }

  double KelvinToCelsius(double temp) {
    _temp = (temp - 273.15);
    return _temp;
  }

  double KelvinToFahrenheit(double temp) {
    _temp = (temp - 273.15) * (9 / 5) + 32;
    return _temp;
  }
}
