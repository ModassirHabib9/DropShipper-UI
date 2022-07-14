import '../utils/images_receiver.dart';

class UnbordingContent_Receiver {
  String? image;
  String? title;
  String? discription;
  // bool? check;

  UnbordingContent_Receiver({this.image, this.title, this.discription /*, this.check*/});
}

List<UnbordingContent_Receiver> contents = [
  UnbordingContent_Receiver(
      title: 'Quality Products',
      image: 'assets/images/onboard2.png',
      discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit."),
  UnbordingContent_Receiver(
      title: 'Fast Delivery',
      image: Images.onboarding_1,
      discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit."),
  UnbordingContent_Receiver(
      // check: true,
      title: 'Reward surprises',
      image: 'assets/images/pic1.png',
      discription:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit."),
];
