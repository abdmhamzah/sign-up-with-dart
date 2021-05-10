import 'package:dkatalis/components/default_button.dart';
import 'package:dkatalis/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class FormScheduleVc extends StatefulWidget {
  @override
  _FormScheduleVcState createState() => _FormScheduleVcState();
}

class _FormScheduleVcState extends State<FormScheduleVc> {
  DateTime selectedDate = DateTime.now();
  final _formKey = GlobalKey<FormState>();

  String dataDateSelected;
  String dataTimeSelected;

  bool isDataDateSelected = true;
  bool isDataTimeSelected = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildDatePickerForm(),
          buildTimePickerForm(),
          SizedBox(height: 100),
          DefaultButton(
            text: "Next",
            press: () {
              print("Continue to Success Screen");
              print(isDataDateSelected);
              // Navigator.pushNamed(context, ScreenScheduleVcForm.routeName);
            },
          )
        ],
      ),
    );
  }

  Container buildDatePickerForm() {
    return Container(
      width: getProportionateScreenWidth(375),
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {
          showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year + 5),
          ).then((value) {
            if (value != null) {
              setState(() {
                dataDateSelected = dateConverter(value);
                selectedDate = value;
                isDataDateSelected = true;
              });
            } else {
              setState(() {
                isDataDateSelected = false;
              });
            }
          });
        },
        style: TextButton.styleFrom(
          backgroundColor:
              isDataDateSelected ? Colors.grey.shade300 : Colors.red.shade300,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          enableFeedback: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date",
                        style: isDataDateSelected ? labelInfo : labelDanger),
                    Text(
                      dataDateSelected == null
                          ? "- Choose Date -"
                          : dataDateSelected,
                      style: bodyBlack,
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.arrow_drop_down_rounded,
                size: 36,
                color: isDataDateSelected ? Colors.grey : Colors.red.shade900,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildTimePickerForm() {
    return Container(
      width: getProportionateScreenWidth(375),
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey.shade300,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          enableFeedback: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Time", style: labelInfo),
                    Text(
                      dataTimeSelected == null
                          ? "- Choose Time -"
                          : dataTimeSelected,
                      style: bodyBlack,
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.arrow_drop_down_rounded,
                size: 36,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
