import 'package:dropshpper_app/sender_src/utils/images.dart';

class UnbordingContent {
  String? image;
  String? title;
  String? discription;
  // bool? check;

  UnbordingContent({this.image, this.title, this.discription /*, this.check*/});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Quality Products',
      image: 'assets/images/onboard2.png',
      discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit."),
  UnbordingContent(
      title: 'Fast Delivery',
      image: Images.onboarding_1,
      discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit."),
  UnbordingContent(
      // check: true,
      title: 'Reward surprises',
      image: 'assets/images/pic1.png',
      discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit."),
];
