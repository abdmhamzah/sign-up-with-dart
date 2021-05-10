import 'package:dkatalis/components/default_button.dart';
import 'package:dkatalis/screens/screen_schedule_vc/screen_schedule_vc_form.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class FormPersonalInfo extends StatefulWidget {
  @override
  _FormPersonalInfoState createState() => _FormPersonalInfoState();
}

class _FormPersonalInfoState extends State<FormPersonalInfo> {
  final _formKey = GlobalKey<FormState>();
  final List<String> listGoalActivation = [
    "Saving",
    "Buy a House",
    "Traveling Worldwide",
    "Married",
    "Buy a Car",
    "Investment",
  ];
  final List<String> listMonthlyIncome = [
    "Rp. 1,000,000 - 3,500,000",
    "Rp. 3,500,000 - 10,000,000",
    "> Rp. 10,000,000",
  ];
  final List<String> listMonthlyExpense = [
    "Rp. 1,000,000 - 2,500,000",
    "Rp. 2,500,000 - 5,000,000",
    "> Rp. 5,000,000",
  ];

  String selectedGoalActivation;
  String selectedMonthlyIncome;
  String selectedMonthlyExpense;

  bool isGoalActivationSelected = true;
  bool isMonthlyIncomeSelected = true;
  bool isMonthlyExpenseSelected = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildGoalActivationForm(),
          buildMonthlyIncomeForm(),
          buildMonthlyExpenseForm(),
          SizedBox(height: 30),
          DefaultButton(
            text: "Next",
            press: () {
              if (selectedGoalActivation == null) {
                setState(() {
                  isGoalActivationSelected = false;
                });
              }
              if (selectedMonthlyIncome == null) {
                setState(() {
                  isMonthlyIncomeSelected = false;
                });
              }
              if (selectedMonthlyExpense == null) {
                setState(() {
                  isMonthlyExpenseSelected = false;
                });
              }
              if (selectedGoalActivation != null &&
                  selectedMonthlyIncome != null &&
                  selectedMonthlyExpense != null) {
                Navigator.pushNamed(context, ScreenScheduleVcForm.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  Container buildGoalActivationForm() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isGoalActivationSelected
            ? Colors.grey.shade300
            : Colors.red.shade300,
        borderRadius: new BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Text(
            'Goal For Activation',
            style: isGoalActivationSelected ? labelInfo : labelDanger,
          ),
          Container(
            height: 50,
            child: DropdownButton(
              underline: SizedBox(),
              dropdownColor: Colors.grey.shade300,
              hint: Text(
                "- Choose Option -",
                style: bodyBlack,
              ),
              icon: Container(
                child: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: isGoalActivationSelected
                      ? Colors.grey
                      : Colors.red.shade900,
                ),
                padding: EdgeInsets.only(bottom: 5),
              ),
              iconSize: 40,
              isExpanded: true,
              value: selectedGoalActivation,
              onChanged: (value) {
                setState(() {
                  selectedGoalActivation = value;
                  isGoalActivationSelected = true;
                });
              },
              items: listGoalActivation.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Container buildMonthlyIncomeForm() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isMonthlyIncomeSelected
            ? Colors.grey.shade300
            : Colors.red.shade300,
        borderRadius: new BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Text(
            'Monthly Income',
            style: isMonthlyIncomeSelected ? labelInfo : labelDanger,
          ),
          Container(
            height: 50,
            child: DropdownButton(
              underline: SizedBox(),
              dropdownColor: Colors.grey.shade300,
              hint: Text(
                "- Choose Option -",
                style: bodyBlack,
              ),
              icon: Container(
                child: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: isMonthlyIncomeSelected
                      ? Colors.grey
                      : Colors.red.shade900,
                ),
                padding: EdgeInsets.only(bottom: 5),
              ),
              iconSize: 40,
              isExpanded: true,
              value: selectedMonthlyIncome,
              onChanged: (value) {
                setState(() {
                  selectedMonthlyIncome = value;
                  isMonthlyIncomeSelected = true;
                });
              },
              items: listMonthlyIncome.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Container buildMonthlyExpenseForm() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10, top: 10),
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isMonthlyExpenseSelected
            ? Colors.grey.shade300
            : Colors.red.shade300,
        borderRadius: new BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Text(
            'Monthly Expense',
            style: isMonthlyExpenseSelected ? labelInfo : labelDanger,
          ),
          Container(
            height: 50,
            child: DropdownButton(
              underline: SizedBox(),
              dropdownColor: Colors.grey.shade300,
              hint: Text(
                "- Choose Option -",
                style: bodyBlack,
              ),
              icon: Container(
                child: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: isMonthlyExpenseSelected
                      ? Colors.grey
                      : Colors.red.shade900,
                ),
                padding: EdgeInsets.only(bottom: 5),
              ),
              iconSize: 40,
              isExpanded: true,
              value: selectedMonthlyExpense,
              onChanged: (value) {
                setState(() {
                  selectedMonthlyExpense = value;
                  isMonthlyExpenseSelected = true;
                });
              },
              items: listMonthlyExpense.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
