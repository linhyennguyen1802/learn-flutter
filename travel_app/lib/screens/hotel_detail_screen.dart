import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/constants/color_palatte.dart';
import 'package:travel_app/constants/dimension_constants.dart';
import 'package:travel_app/data/model/hotel_model.dart';
import 'package:travel_app/helpers/asset_helper.dart';
import 'package:travel_app/helpers/image_helper.dart';
import 'package:travel_app/widgets/button_widget.dart';

class HotelDetailScreen extends StatefulWidget {
  const HotelDetailScreen({super.key, required this.hotelModel});

  static const String routeName = '/hotel_detail_screen';

  final HotelModel hotelModel;

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: ImageHelper.loadFromAsset(
            AssetHelper.hotelScreen,
            fit: BoxFit.fill,
          )),
          Positioned(
            top: kMediumPadding * 3,
            left: kMediumPadding,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: EdgeInsets.all(kItemPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(kDefaultPadding),
                  ),
                ),
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  size: 18,
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            maxChildSize: 0.8,
            minChildSize: 0.3,
            builder: ((context, scrollController) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding * 2),
                      topRight: Radius.circular(kDefaultPadding * 2),
                    )),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: kDefaultPadding),
                      child: Container(
                        height: 5,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(kItemPadding)), color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.hotelModel.hotelName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '\$${widget.hotelModel.price}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(' /night'),
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Row(
                            children: [
                              ImageHelper.loadFromAsset(
                                AssetHelper.icoLocationBlank,
                              ),
                              SizedBox(
                                width: kMinPadding,
                              ),
                              Text(
                                widget.hotelModel.location,
                              )
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Row(
                            children: [
                              ImageHelper.loadFromAsset(
                                AssetHelper.icoStar,
                              ),
                              SizedBox(
                                width: kMinPadding,
                              ),
                              Text(
                                '${widget.hotelModel.star}/5',
                              ),
                              Text(
                                '${widget.hotelModel.numberOfReview}',
                                style: TextStyle(color: ColorPalette.subTitleColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Text(
                            'Information',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Text(
                            'You will find every comfort because of many of the service that the hotel offers for travellers and of course the hotel is very comfortable',
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Text(
                            'Location',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Text(
                            'Located in the famous neighborhood of Seoul, Gand Luxury’s is set in a building built in the 2010s.',
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          ImageHelper.loadFromAsset(AssetHelper.imageMap),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          ButtonWidget(title: 'Select Room'),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          Positioned(
            top: kMediumPadding * 3,
            right: kMediumPadding,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(kItemPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(kDefaultPadding),
                  ),
                ),
                child: Icon(
                  FontAwesomeIcons.solidHeart,
                  size: 18,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
