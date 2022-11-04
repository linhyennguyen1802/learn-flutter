import 'package:flutter/material.dart';
import 'package:travel_app/constants/dimension_constants.dart';
import 'package:travel_app/helpers/asset_helper.dart';
import 'package:travel_app/helpers/image_helper.dart';

class ItemAddGuestRoomState extends StatefulWidget {
  const ItemAddGuestRoomState({super.key, required this.title, required this.icon, required this.innitData});

  final String title;
  final String icon;
  final int innitData;

  @override
  State<ItemAddGuestRoomState> createState() => _ItemAddGuestRoomStateState();
}

class _ItemAddGuestRoomStateState extends State<ItemAddGuestRoomState> {
  late final TextEditingController _textEditingController;
  final FocusNode _focusNode = FocusNode();
  late int number;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number = widget.innitData;
    _textEditingController = TextEditingController(text: widget.innitData.toString())
      ..addListener(() {
        number = int.parse(_textEditingController.text);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kTopPadding),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: kMediumPadding),
      padding: EdgeInsets.all(kMediumPadding),
      child: Row(
        children: [
          ImageHelper.loadFromAsset(widget.icon),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(
            widget.title,
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              if (number > 1) {
                setState(() {
                  number--;
                  _textEditingController.text = number.toString();
                  if (_focusNode.hasFocus) {
                    _focusNode.unfocus();
                  }
                });
              }
            },
            child: ImageHelper.loadFromAsset(AssetHelper.icoDecre),
          ),
          Container(
              height: 35,
              width: 60,
              padding: EdgeInsets.only(left: 3),
              alignment: Alignment.center,
              child: TextField(
                controller: _textEditingController,
                textAlign: TextAlign.center,
                focusNode: _focusNode,
                enabled: true,
                autocorrect: false,
                minLines: 1,
                maxLines: 1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.only(bottom: 18),
                ),
                onChanged: (value) {},
                onSubmitted: (String submitValue) {},
              )),
          GestureDetector(
            onTap: () {
              setState(() {
                number++;
              });
              _textEditingController.text = number.toString();
              if (_focusNode.hasFocus) {
                _focusNode.unfocus();
              }
              ;
            },
            child: ImageHelper.loadFromAsset(AssetHelper.icoIncre),
          ),
        ],
      ),
    );
  }
}
