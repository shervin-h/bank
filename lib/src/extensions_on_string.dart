/// ## [PersianToEnglishNumberConversion] Extension Documentation
///
/// The `PersianToEnglishNumberConversion` extension provides functionality to convert Persian numeral characters to their English equivalents.
///
/// This extension enhances the `String` class by adding a method `convertPersianToEnglishNumbers`, which replaces Persian numeral characters in a string with their English equivalents.
///
/// Example Usage:
///
/// ```dart
/// String persianNumber = '۱۲۳۴۵۶۷۸۹۰';
/// String englishNumber = persianNumber.convertPersianToEnglishNumbers(); // Result: '1234567890'
/// ```
extension PersianToEnglishNumberConversion on String {
  /// ## [convertPersianToEnglishNumbers] Method Documentation
  ///
  /// The [convertPersianToEnglishNumbers] method is a custom method for converting Persian numeral characters to their English equivalents.
  ///
  /// ### Method Details
  ///
  /// - The method creates a map [persianToEnglish] that maps Persian numeral characters to their English equivalents.
  /// - It uses [replaceAllMapped] method to replace Persian numeral characters in the string with their English equivalents based on the defined map.
  ///
  /// ### Example Usage
  ///
  /// ```dart
  /// String persianNumber = '۱۲۳۴۵۶۷۸۹۰';
  /// String englishNumber = persianNumber.convertPersianToEnglishNumbers(); // Result: '1234567890'
  /// ```
  String convertPersianToEnglishNumbers() {
    final Map<String, String> persianToEnglish = {
      '۰': '0',
      '۱': '1',
      '۲': '2',
      '۳': '3',
      '۴': '4',
      '۵': '5',
      '۶': '6',
      '۷': '7',
      '۸': '8',
      '۹': '9',
    };

    return replaceAllMapped(
      RegExp('[۰-۹]'),
      (match) {
        final matchedString = match.group(0);
        return persianToEnglish[matchedString]!;
      },
    );
  }
}

/// ## [BankCardNumberValidation] Extension Documentation
///
/// The `BankCardNumberValidation` extension provides functionality to validate bank card numbers.
///
/// ### Usage Example:
///
/// ```dart
/// // Validating a bank card number
/// String cardNumber = '6037701689095443';
/// if (cardNumber.isValidCardNumber()) {
///   print('Valid card number');
/// } else {
///   print('Invalid card number');
/// }
/// ```
///
/// Developers can use this extension to check whether a given string represents a valid bank card number.
extension BankCardNumberValidation on String {

  /// ## [isValidCardNumber] Method Documentation
  ///
  /// Validates the bank card number.
  ///
  /// Returns:
  /// - `true` if the card number is valid.
  /// - `false` otherwise.
  bool isValidCardNumber() {
    final number = convertPersianToEnglishNumbers();

    // Check if the number matches the format of 16 digits
    if (!RegExp(r'^[0-9]{16}$').hasMatch(number)) {
      return false;
    }

    // Check if the number does not contain all zeros
    if (int.parse(number.substring(1, 11)) == 0 ||
        int.parse(number.substring(10, 16)) == 0) {
      return false;
    }

    int s = 0;
    int k, d;
    for (int i = 0; i < 16; i++) {
      k = (i % 2 == 0) ? 2 : 1;
      d = int.parse(number.substring(i, i + 1)) * k;
      s += (d > 9) ? d - 9 : d;
    }
    return ((s % 10) == 0);
  }
}
