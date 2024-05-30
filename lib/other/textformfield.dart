import 'package:broker_join/other/textformfield_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormFiledView extends StatelessWidget {
  TextFormFiledView({super.key});
  TextFormFieldViewModel viewModel = Get.put(TextFormFieldViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          TextFormField(
            controller: viewModel.text,
            onChanged: (value) {
              var tovalue = 100;
              var percent = value.toString();
              //double result= (tovalue / percent )* percent.toString(),
              // print(value);
              // print(tovalue);
              // print(percent);
              double newValue = double.tryParse(value) ?? 0.0;
              viewModel.updateCurrentValue(newValue);
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            //controller: viewModel.text,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
