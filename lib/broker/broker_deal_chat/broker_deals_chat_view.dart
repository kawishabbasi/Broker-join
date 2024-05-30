import 'package:broker_join/broker/broker_deal_chat/broker_dels_chat_viewmodel.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BrokerDealChatView extends StatelessWidget {
  final String id;
  final String proposal_id;
  final String brokerid;
  final String propertyowner_id;
  BrokerDealChatView(
      this.id, this.proposal_id, this.brokerid, this.propertyowner_id,
      {super.key});
  BrokerDealsChatviewmodel viewmodel = Get.put(BrokerDealsChatviewmodel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              canceltext(context),
              finishtext(),
              complaintext(context),
            ],
          ),
          const SizedBox(height: 10),
          Text(id.toString()),
          const Divider(thickness: 2),
          Spacer(),
          message(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  //----------
  Widget canceltext(BuildContext context) {
    return GestureDetector(
      onTap: () {
        viewmodel.reason.clear();
        print("cancel");
        viewmodel.deals_id = id.toString();
        canceldialog(context);
      },
      child: Container(
        height: 6.h,
        width: 25.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey),
        child: Center(child: Text("Cancel")),
      ),
    );
  }

  Widget finishtext() {
    return Container(
      height: 6.h,
      width: 25.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: const Center(child: Text("Finish")),
    );
  }

  Widget complaintext(BuildContext context) {
    return GestureDetector(
      onTap: () {
        viewmodel.reason.clear();
        print("complain");
        viewmodel.deals_id = id.toString();
        viewmodel.proposalid = proposal_id.toString();
        complaindialog(context);
      },
      child: Container(
        height: 6.h,
        width: 25.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey),
        child: Center(child: Text("Complain")),
      ),
    );
  }

  //-----------------------------------------
  Future<void> canceldialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            height: 30.h,
            width: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Reasons for cancelling"),
                SizedBox(height: 1.h),
                TextFormField(
                  controller: viewmodel.reason,
                  maxLines: 3,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(height: 2.h),
                GestureDetector(
                  onTap: () {
                    viewmodel.button_type = "cancel";
                    viewmodel.cancelbrokerdeal();
                  },
                  child: Container(
                    height: 5.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Request Cancellation",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //---------------------
  Future<void> complaindialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            height: 20.h,
            width: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Reasons for cancelling"),
                SizedBox(height: 1.h),
                TextFormField(
                  controller: viewmodel.reason,
                ),
                SizedBox(height: 2.h),
                GestureDetector(
                  onTap: () {
                    viewmodel.button_type = "complain";
                    viewmodel.cancelbrokerdeal();
                  },
                  child: Container(
                    height: 5.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Request Cancellation",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //---------------
  Widget message() {
    return Row(
      children: [
        SizedBox(
          width: 80.w,
          child: TextFormField(
            controller: viewmodel.message,
            decoration: InputDecoration(
              //labelText: lable,
              hintText: "message",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(20), // Adjust the value as needed
                borderSide: BorderSide(color: Colors.grey), // Border color
              ),
            ),
          ),
        ),
        SizedBox(width: 2.w),
        GestureDetector(
            onTap: () {
              //print("send");
              print(viewmodel.message.text.toString());
              viewmodel.proposalid = proposal_id.toString();
              print(viewmodel.proposalid);
              viewmodel.id = id.toString();
              print(GlobalVariables.user_id);
              print('----broker---${brokerid}');
              print('----owner---${propertyowner_id}');

              if (GlobalVariables.user_id.toString() == brokerid.toString()) {
                print('owner');
                viewmodel.sent_to = propertyowner_id;
                viewmodel.chatmessage();
              } else {
                print('broker');
                viewmodel.sent_to = brokerid;
                viewmodel.chatmessage();
              }
              //viewmodel.id = id.toString();
              //viewmodel.chatmessage();
            },
            child: Icon(Icons.send, size: 50))
      ],
    );
  }
}
