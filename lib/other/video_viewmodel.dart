// import 'dart:io';
// import 'package:file_picker/file_picker.dart';
// import 'package:video_player/video_player.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';

// class VideoViewModel extends GetxController {
//   late VideoPlayerController videoPlayerController;
//   Rx<File?> videoFile = Rx<File?>(null);

//   @override
//   void onInit() {
//     super.onInit();
//     videoPlayerController = VideoPlayerController.file(videoFile.value!)
//       ..initialize().then((_) {
//         update();
//       });
//   }

//   @override
//   void onClose() {
//     super.onClose();
//     videoPlayerController.dispose();
//   }

//   void pickVideo() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.video,
//     );

//     if (result != null) {
//       File file = File(result.files.single.path!);
//       videoFile.value = file;
//       videoPlayerController = VideoPlayerController.file(videoFile.value!)
//         ..initialize().then((_) {
//           update();
//         });
//     }
//   }
// //   void pickVideo() async {
// //   String? filePath = await FilePicker.platform.pickFiles(
// //     type: FileType.video,
// //     allowMultiple: false,
// //   ).then((value) => value?.files.single.path);

// //   if (filePath != null) {
// //     // You have the path to the selected video, now you can upload it.
// //    // uploadVideo(filePath);
// //   }
// // }
// //--------------------------------
// }
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class pickImage extends GetxController {
  RxList<File> images = <File>[].obs;

  void pickImages() async {
    print("-------------------------------------------------------");
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );
    print("-----------------------222222--------------------------------");
    if (result != null) {
      print("-----------------------33333------------------------------");
      List<File> pickedImages =
          result.paths.map((path) => File(path!)).toList();
      images.addAll(pickedImages);
    }
    print("-----------------------4444444------------------------------");
  }
}
