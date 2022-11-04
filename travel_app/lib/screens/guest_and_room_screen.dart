import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:travel_app/constants/dimension_constants.dart';
import 'package:travel_app/helpers/asset_helper.dart';
import 'package:travel_app/helpers/image_helper.dart';
import 'package:travel_app/widgets/appbar_container.dart';
import 'package:travel_app/widgets/button_widget.dart';
import 'package:travel_app/widgets/item_add_guest_and_room.dart';

class GuestAndRoomScreen extends StatefulWidget {
  const GuestAndRoomScreen({super.key});

  static String routeName = '/guest_and_room_screen';

  @override
  State<GuestAndRoomScreen> createState() => _GuestAndRoomScreenState();
}

class _GuestAndRoomScreenState extends State<GuestAndRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Add Guest And Room',
      implementLeading: true,
      implementTraling: false,
      child: Column(
        children: [
          SizedBox(
            height: kMediumPadding * 2,
          ),
          ItemAddGuestRoomState(
            title: 'Guest',
            icon: AssetHelper.icoGuest,
            innitData: 2,
          ),
          ItemAddGuestRoomState(
            title: 'Room',
            icon: AssetHelper.icoBed,
            innitData: 1,
          ),
          SizedBox(
            height: kMediumPadding * 0.5,
          ),
          ButtonWidget(
            title: 'Select',
            onTap: () {
              Navigator.of(context).pop([]);
            },
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          ButtonWidget(
            title: 'Cancel',
            onTap: () {
              Navigator.of(context).pop([]);
            },
          ),
        ],
      ),
    );
  }
}
