# flutter_weather_ui
A flutter project with modern UI for weather forecast.


## Getting Started
Get-X was used for state and route managements through this App, as it is a lightweight state manager and has minimal consumption of the device's RAM. The sole target of this project is UI rendering, therefore it is not screen-size responsive for all devices, I used Iphone 14 simulator.


## Folder Structure
Here is the core folder structure which flutter provides.
<code>
flutter-app/
 |- android
 |- build
 |- ios
 |- lib
 |- test
 </code>
 
 Here is the folder structure I used in this project
<code> 
lib/
|- controllers/
|- images/
|- model/
|- views/
|- widgets/
|- main.dart</code>


#### SubFolders Structure

|- controllers/
<code> app_controller.dart</code>

<code>|- model/
daily_model.dart
hourly_model.dart</code>

|- views/
<code>homepage.dart
weekly_view.dart</code>

|- widgets/
<code>bottom_details_widget.dart
daily_widget.dart
footer_subwidget.dart
header.dart
hourly_widget.dart
temp_property.dart
top_widget.dart
weekly_days_widget.dart
weekly_top_widget.dart</code>


## main.dart
<code>
import 'package:flutter/material.dart';
import 'package:flutter_weather_ui/views/homepage.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }}
</code>
  
  
  ## App Screens
  <img src="https://user-images.githubusercontent.com/120676400/212695378-cc571d1e-26e9-4f24-b68a-ca471db1a2d6.png" width="360" height="780">  <img src="https://user-images.githubusercontent.com/120676400/212695458-dc71cd1f-58e6-4df3-aa66-64eda0391c8a.png" width="360" height="780">  
