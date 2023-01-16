class DailyModel {
  final String days;
  final String weatherIcon;
  final String miniTemp;
  final String maxTemp;

  DailyModel(
      {required this.days,
      required this.weatherIcon,
      required this.miniTemp,
      required this.maxTemp});

  static List<DailyModel> daily = [
    DailyModel(
        days: "Friday, 13 Jan",
        weatherIcon: "lib/images/cloudy.png",
        miniTemp: "-2°",
        maxTemp: "-7°"),
    DailyModel(
        days: "Saturday, 14 Jan",
        weatherIcon: "lib/images/snow.png",
        miniTemp: "-4°",
        maxTemp: '-8°'),
    DailyModel(
        days: "Sunday, 15 Jan",
        weatherIcon: "lib/images/weather.png",
        miniTemp: "0°",
        maxTemp: "5°"),
    DailyModel(
        days: "Monday, 16 Jan",
        weatherIcon: "lib/images/cloudy.png",
        miniTemp: "4°",
        maxTemp: "6°"),
    DailyModel(
        days: "Tuesday, 17 Jan",
        weatherIcon: "lib/images/cloudy.png",
        miniTemp: "5°",
        maxTemp: "6°"),
    DailyModel(
        days: "Wednesday, 18 Jan",
        weatherIcon: "lib/images/weather.png",
        miniTemp: "10°",
        maxTemp: "15°"),
    DailyModel(
        days: "Thursday, 19 Jan",
        weatherIcon: "lib/images/cloudy.png",
        miniTemp: "12°",
        maxTemp: "14°")
  ];
}
