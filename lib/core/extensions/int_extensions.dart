extension IntExtension on int {
  String convertSecondsToMinutesRoundedOff() {
    int seconds = this;
    String minutes = (seconds / 60).round().toString();
    return "$minutes mins";
  }
}
