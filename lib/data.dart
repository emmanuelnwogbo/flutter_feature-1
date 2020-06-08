class OnboardinMessage {
  OnboardinMessage(this.url, this.message);

  final String url;
  final String message;
}

List<OnboardinMessage> onboardimages = [
  OnboardinMessage(
      'https://res.cloudinary.com/dlkv086v3/image/upload/v1591422890/girl_yzgeha.png',
      'Real-time location tracking'),
  OnboardinMessage(
      'https://res.cloudinary.com/dlkv086v3/image/upload/v1591422885/caution_xneilq.png',
      'Responsive SOS button'),
  OnboardinMessage(
      'https://res.cloudinary.com/dlkv086v3/image/upload/v1591422885/group_dqfowj.png',
      'Create a group of close friends that can receive custom SOS alerts')
];
