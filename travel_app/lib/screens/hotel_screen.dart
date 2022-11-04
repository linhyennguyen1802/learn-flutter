import 'package:flutter/material.dart';
import 'package:travel_app/data/model/hotel_model.dart';
import 'package:travel_app/helpers/asset_helper.dart';
import 'package:travel_app/widgets/appbar_container.dart';
import 'package:travel_app/widgets/item_hotel_widget.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  static const String routeName = "/hotel_screen";

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  final List<HotelModel> listHotel = [
    HotelModel(
      hotelImage: AssetHelper.hotel1,
      hotelName: 'Royal Palm Heritage',
      location: 'Purwokerto, Jateng',
      awayKilometer: '364 m',
      star: 4.5,
      numberOfReview: 3241,
      price: 143,
    ),
    HotelModel(
      hotelImage: AssetHelper.hotel2,
      hotelName: 'Grand Luxury\'s',
      location: 'Banyumas, Jateng',
      awayKilometer: '2.3 km',
      star: 4.2,
      numberOfReview: 3241,
      price: 234,
    ),
    HotelModel(
      hotelImage: AssetHelper.hotel3,
      hotelName: 'The Orlando House',
      location: 'Ajibarang, Jateng',
      awayKilometer: '1.1 km',
      star: 3.8,
      numberOfReview: 1234,
      price: 132,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Hotels',
      implementLeading: true,
      implementTraling: false,
      child: SingleChildScrollView(
        child: Column(
          children: listHotel.map((e) => ItemHotelWidget(hotelModel: e)).toList(),
        ),
      ),
    );
  }
}
