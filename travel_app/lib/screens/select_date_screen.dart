import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:travel_app/constants/color_palatte.dart';
import 'package:travel_app/constants/dimension_constants.dart';
import 'package:travel_app/widgets/appbar_container.dart';
import 'package:travel_app/widgets/button_widget.dart';

class SelectDateScreen extends StatelessWidget {
  static String routeName = '/select_date_screen';

  DateTime? rangeStartDate;
  DateTime? rangeEndDate;

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      titleString: 'Select date',
      implementLeading: true,
      implementTraling: false,
      child: Column(
        children: [
          SizedBox(
            height: kMediumPadding * 1.5,
          ),
          SfDateRangePicker(
            view: DateRangePickerView.month,
            selectionMode: DateRangePickerSelectionMode.range,
            monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
            selectionColor: ColorPalette.yellowColor,
            startRangeSelectionColor: ColorPalette.yellowColor,
            endRangeSelectionColor: ColorPalette.yellowColor,
            rangeSelectionColor: ColorPalette.yellowColor.withOpacity(0.25),
            todayHighlightColor: ColorPalette.yellowColor,
            toggleDaySelection: true,
            onSelectionChanged: ((DateRangePickerSelectionChangedArgs args) {
              if (args.value is PickerDateRange) {
                rangeStartDate = args.value.startDate;
                rangeEndDate = args.value.endDate;
              } else {
                rangeStartDate = null;
                rangeEndDate = null;
              }
            }),
          ),
          ButtonWidget(
            title: 'Select',
            onTap: () {
              Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
            },
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          ButtonWidget(
            title: 'Cancel',
            onTap: () {
              Navigator.of(context).pop([rangeStartDate, rangeEndDate]);
            },
          ),
        ],
      ),
    );
  }
}
