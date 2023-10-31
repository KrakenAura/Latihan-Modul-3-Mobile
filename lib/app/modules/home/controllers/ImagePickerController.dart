import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  RxList<XFile> pickedImages = <XFile>[].obs;

  void pickImageFromGallery() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      pickedImages.add(pickedImage);
    }
  }

  void pickImageFromCamera() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      pickedImages.add(pickedImage);
    }
  }

  void removeImage(int index) {
    pickedImages.removeAt(index);
  }
}