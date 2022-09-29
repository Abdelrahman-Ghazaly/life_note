import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class Utilities {
  static final Utilities _utilities = Utilities._internal();

  factory Utilities() {
    return _utilities;
  }

  Utilities._internal();

  static double screenHeight =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;

  static double screenWidth =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

  navigatTo({required BuildContext context, required Widget screen}) {
    Future.delayed(
      Duration.zero,
      () {
        Navigator.pushReplacement(
          context,
          _MyRoute(
            builder: (context) => screen,
          ),
        );
      },
    );
  }

  Future<Uint8List?> uploadImage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    return file?.readAsBytes();
  }
}

class _MyRoute extends CupertinoPageRoute {
  _MyRoute({required WidgetBuilder builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);
}
