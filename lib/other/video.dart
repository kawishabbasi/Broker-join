// import 'package:broker_join/other/video_viewmodel.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:video_player/video_player.dart';

// class Videoview extends StatelessWidget {
//   Videoview({super.key});
//   final VideoViewModel controller = Get.put(VideoViewModel());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Obx(() {
//             //   return controller.videoFile.value != null
//             //       ? AspectRatio(
//             //           aspectRatio:
//             //               controller.videoPlayerController.value.aspectRatio,
//             //           child: VideoPlayer(controller.videoPlayerController),
//             //         )
//             //       : Container();
//             // }),
//             ElevatedButton(
//               onPressed: controller.pickVideo,
//               child: Center(child: Text('Pick Video')),
//             ),
//           ],
//         ),
//       ),
//     );
//     // body: Column(
//     //   mainAxisAlignment: MainAxisAlignment.center,
//     //   children: [
//     //     Container(
//     //         height: 100,
//     //         width: 100,
//     //         decoration: BoxDecoration(color: Colors.amberAccent),
//     //         child: Center(child: Text("video")))
//     //   ],
//     // ),
//     //);
//   }
// }
//-------------------------------------------------------------------------------

import 'package:broker_join/other/video_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Videoview extends StatelessWidget {
  Videoview({super.key});
  pickImage controller = Get.put(pickImage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Images'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.images.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.file(controller.images[index]),
                      title: Text('Image ${index + 1}'),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: controller.pickImages,
              child: Text('Pick Images'),
            ),
          ],
        ),
      ),
    );
    // body: Column(
    //   children: [
    //     Center(
    //       child: Text("pick image"),
    //     )
    //   ],
    // ),
    //  );
  }
}
