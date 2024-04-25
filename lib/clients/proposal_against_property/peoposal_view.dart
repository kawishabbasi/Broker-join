import 'package:broker_join/clients/proposal_against_property/proposal_viewmodel.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProposalView extends StatelessWidget {
  ProposalView({super.key});
  PropsalViewModel viewModel = Get.put(PropsalViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 9.h,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(),
              color: const Color.fromARGB(255, 241, 234, 234),
            ),
            child: const Center(
              child: Text(
                "Proposal ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Container(
            height: 80.h,
            width: 320,
            child: Obx(
              () => GlobalVariables.showLoader.value == true
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: viewModel.property_proposal.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print(viewModel.property_proposal[index].id);
                            // Get.to(() => ProposalView());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 40.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 3.h),
                                        Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                // color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all()),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: const Image(
                                                    image: AssetImage(
                                                        "images/brokerjoinpic.png")))),
                                        SizedBox(width: 3.h),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              viewModel.property_proposal[index]
                                                  .user!.name
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff09090A)),
                                            ),
                                            Text(
                                              viewModel.property_proposal[index]
                                                  .user!.email
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff09090A)),
                                            ),
                                            Text(
                                              viewModel
                                                  .property_proposal[index].id
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff09090A)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 2.h),
                                      ],
                                    ),
                                    SizedBox(height: 2.h),
                                    Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. essentially unchanged. It was popularised publishing."),
                                    SizedBox(height: 2.h),
                                    Spacer(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 6.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text("Chat"),
                                          ),
                                        ),
                                        Container(
                                          height: 6.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text(
                                              "Accept",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
