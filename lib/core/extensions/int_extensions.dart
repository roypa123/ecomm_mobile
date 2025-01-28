import '../configs/constants/string_constants.dart';

extension IntExtension on int {
  String convertReadsToThousands() {
    if (this >= 0 && this < 1000) {
      int value = this;
      return "${value.toString()}  ${Strings.reads}";
    } else {
      double value = this / 1000;
      return "${value.toStringAsFixed(2)}  ${Strings.kreads}";
    }
  }

  String convertReadsToThousandsOne() {
    if (this >= 0 && this < 1000) {
      int value = this;
      return value.toString();
    } else {
      double value = this / 1000;
      return "${value.toStringAsFixed(1)} ${Strings.k}";
    }
  }

  String convertSecondsToMinutesRoundedOff() {
    int seconds = this;
    String minutes = (seconds / 60).round().toString();
    return "$minutes mins";
  }
}
