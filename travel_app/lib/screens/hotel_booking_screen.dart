import 'package:flutter/material.dart';
import 'package:travel_app/constants/dimension_constants.dart';
import 'package:travel_app/helpers/asset_helper.dart';
import 'package:travel_app/screens/guest_and_room_screen.dart';
import 'package:travel_app/screens/hotel_screen.dart';
import 'package:travel_app/screens/select_date_screen.dart';
import 'package:travel_app/widgets/appbar_container.dart';
import 'package:travel_app/widgets/button_widget.dart';
import 'package:travel_app/widgets/item_booking_widget.dart';
import 'package:travel_app/extensions/date_ext.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});

  static final String routeName = "/hotel_booking_screen";

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  String? dateSelected;
  String? guestRoom;

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      implementLeading: true,
      implementTraling: false,
      titleString: "Hotel booking",
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: kMediumPadding * 2,
          ),
          ItemBookingWidget(
            icon: AssetHelper.icoLocation,
            title: "Destination",
            description: "South Korea",
            onTap: () {},
          ),
          SizedBox(
            height: kMediumPadding,
          ),
          ItemBookingWidget(
            icon: AssetHelper.icoCalendal,
            title: "Select Date",
            description: dateSelected ?? "13 Feb - 18 Feb 2021",
            onTap: () async {
              final result = await Navigator.of(context).pushNamed(SelectDateScreen.routeName);
              if (!(result as List<DateTime?>).any((element) => element == null)) {
                dateSelected = '${result[0]?.getStartDate} - ${result[1]?.getEndDate}';
                setState(() {});
                ;
              }
              ;
            },
          ),
          SizedBox(
            height: kMediumPadding,
          ),
          ItemBookingWidget(
            icon: AssetHelper.icoBed,
            title: "Guest and Room",
            description: guestRoom ?? "2 Guest - 1 Room",
            onTap: () {
              Navigator.of(context).pushNamed(GuestAndRoomScreen.routeName);
            },
          ),
          SizedBox(
            height: kMediumPadding,
          ),
          ButtonWidget(
              title: 'Search',
              onTap: () {
                Navigator.of(context).pushNamed(HotelScreen.routeName);
              }),
        ],
      )),
    );
  }
}
