/// ## [BankInfo] Class Documentation
///
/// The `BankInfo` class represents information about a bank, including its name in both Persian and English,
/// as well as its code.
///
/// ### Properties:
/// - `nameFa`: The name of the bank in Persian.
/// - `nameEn`: The name of the bank in English.
/// - `code`: The code of the bank.
///
/// ### Usage Example:
///
/// ```dart
/// // Creating an instance of BankInfo
/// BankInfo bank = BankInfo(
///   nameFa: 'بانک ملت',
///   nameEn: 'Bank Melli',
///   code: '6104332',
/// );
///
/// // Accessing properties of BankInfo
/// print('Bank Name (Fa): ${bank.nameFa}');
/// print('Bank Name (En): ${bank.nameEn}');
/// print('Bank Code: ${bank.code}');
///
/// // Converting BankInfo to String
/// print(bank.toString()); // Output: BankInfo: بانک ملت, Bank Melli, 6104332
/// ```
///
/// Developers can use this class to represent bank information with localized names and codes.
class BankInfo {
  final String nameFa;
  final String nameEn;
  final String code;

  BankInfo({
    required this.nameFa,
    required this.nameEn,
    required this.code,
  });

  @override
  String toString() {
    return 'BankInfo: $nameFa, $nameEn, $code';
  }
}
