import 'package:flutter/material.dart';
import 'package:travel_app/data/model/hotel_model.dart';
import 'package:travel_app/screens/guest_and_room_screen.dart';
import 'package:travel_app/screens/hotel_booking_screen.dart';
import 'package:travel_app/screens/hotel_detail_screen.dart';
import 'package:travel_app/screens/hotel_screen.dart';
import 'package:travel_app/screens/intro_screen.dart';
import 'package:travel_app/screens/main_app.dart';
import 'package:travel_app/screens/select_date_screen.dart';
import 'package:travel_app/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  HotelScreen.routeName: (context) => const HotelScreen(),
  HotelBookingScreen.routeName: (context) => const HotelBookingScreen(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomScreen.routeName: (context) => const GuestAndRoomScreen(),
};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings setting) {
  switch (setting.name) {
    case HotelDetailScreen.routeName:
      return MaterialPageRoute(builder: (context) {
        final HotelModel hotelModel = (setting.arguments as HotelModel);
        return HotelDetailScreen(hotelModel: hotelModel);
      });
  }
}
