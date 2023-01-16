class HourlyModel {
  final String hour;
  final String weatherIcon;
  final String weatherDegree;

  HourlyModel(
      {required this.hour,
      required this.weatherDegree,
      required this.weatherIcon});

  static List<HourlyModel> hourly = [
    HourlyModel(
        hour: 'Now', weatherDegree: "6°", weatherIcon: "lib/images/cloudy.png"),
    HourlyModel(
        hour: "12 pm",
        weatherDegree: '8°',
        weatherIcon: "lib/images/cloudy.png"),
    HourlyModel(
        hour: '1 pm', weatherDegree: "-2°", weatherIcon: "lib/images/snow.png"),
    HourlyModel(
        hour: '2 pm', weatherDegree: "-2°", weatherIcon: "lib/images/snow.png"),
    HourlyModel(
        hour: '3 pm', weatherDegree: "-3°", weatherIcon: "lib/images/snow.png"),
    HourlyModel(
        hour: '4 pm',
        weatherDegree: "0°",
        weatherIcon: "lib/images/weather.png"),
    HourlyModel(
        hour: '5 pm', weatherDegree: "-5°", weatherIcon: "lib/images/snow.png"),
    HourlyModel(
        hour: '6 pm', weatherDegree: "-10°", weatherIcon: "lib/images/snow.png"),
  ];
}
