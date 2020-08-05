class Card_number {

  String formatedNumber(String number) {
    if (number.length > 4 && number.length < 8) {
      return number.substring(0, 4) +
          " " +
          number.substring(4, (number.length - 1));
    } else if (number.length >= 8 && number.length < 12) {
      return number.substring(0, 4) +
          " " +
          number.substring(4, 8) +
          " " +
          number.substring(8, (number.length - 1));
    } else if (number.length >= 12) {
      return number.substring(0, 4) +
          " " +
          number.substring(4, 8) +
          " " +
          number.substring(8, 12) +
          " " +
          number.substring(12, number.length);
    } else {
      return number;
    }
  }
}
