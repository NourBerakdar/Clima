import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

const apiKey = '5bd951561796ffd7405d281ad097f8a6';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = new NetworkHelper(
        '$openWeatherMapURL?q=$cityName&id=2172797&appid=$apiKey&unit=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = new Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = new NetworkHelper(
        "$openWeatherMapURL?lat=${location.latitude}&lon=${location
            .longitude}&id=2172797&appid=$apiKey&unit=metric");
    var WeatherData = await networkHelper.getData();
    return WeatherData;
  }

  dynamic iconStyle(String icon) {
    Text(
      icon, style: TextStyle(fontSize: 50.sp),
    );
  }

  dynamic getWeatherIcon(int condition) {

      if (condition < 300) {
        return '🌩';
      } else if (condition < 400) {
        return '🌧';
      } else if (condition < 600) {
        return '☔️';
      } else if (condition < 700) {
        return '☃️';
      } else if (condition < 800) {
        return '🌫';
      } else if (condition == 800) {
        return '☀️';
      } else if (condition <= 804) {
        return '☁️';
      } else {
        return '🤷';
      }

  }
    String getMessage(int temp) {
      if (temp > 25) {
        return 'It\'s 🍦 time';
      } else if (temp > 20) {
        return 'Time for shorts and 👕';
      } else if (temp < 10) {
        return 'You\'ll need 🧣 and 🧤';
      } else {
        return 'Bring a 🧥 just in case';
      }
    }
  }
