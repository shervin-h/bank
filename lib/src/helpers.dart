import 'package:bank/bank.dart';

/// ## [getBankFromCardNumber] Function Documentation
///
/// Retrieves bank information based on the provided card number.
///
/// ### Parameters:
/// - `cardNumber`: A string representing the card number.
///
/// ### Returns:
/// - A [BankInfo] object representing the bank information corresponding to the provided card number.
/// - Returns `null` if the card number is invalid or if the bank information is not found.
///
/// ### Usage:
/// ```dart
/// String cardNumber = '6037991234567890';
/// BankInfo? bank = getBankFromCardNumber(cardNumber);
/// print(bank); // Output: BankInfo: بانک ملی, meli, 603799
/// ```
BankInfo? getBankFromCardNumber(String cardNumber) {
  if (!RegExp(r'^\d{16}$').hasMatch(cardNumber)) {
    return null;
  }
  return switch (cardNumber.substring(0, 6)) {
    '603799' => BankInfo(
        nameFa: 'بانک ملی',
        nameEn: 'meli',
        code: '603799',
      ),
    '589210' => BankInfo(
        nameFa: 'بانک سپه',
        nameEn: 'sepah',
        code: '589210',
      ),
    '627961' => BankInfo(
        nameFa: 'بانک صنعت و معدن',
        nameEn: 'sanatmadan',
        code: '627961',
      ),
    '603770' => BankInfo(
        nameFa: 'بانک کشاورزی',
        nameEn: 'keshavarsi',
        code: '603770',
      ),
    '628023' => BankInfo(
        nameFa: 'بانک مسکن',
        nameEn: 'maskan',
        code: '628023',
      ),
    '627760' => BankInfo(
        nameFa: 'پست بانک',
        nameEn: 'postbank',
        code: '627760',
      ),
    '502908' => BankInfo(
        nameFa: 'بانک توسعه',
        nameEn: 'tosehe',
        code: '502908',
      ),
    '627412' => BankInfo(
        nameFa: 'بانک اقتصاد نوین',
        nameEn: 'eghtesad novin',
        code: '627412',
      ),
    '622106' => BankInfo(
        nameFa: 'بانک پارسیان',
        nameEn: 'parsian',
        code: '622106',
      ),
    '502229' => BankInfo(
        nameFa: 'بانک پاسارگاد',
        nameEn: 'pasargad',
        code: '502229',
      ),
    '627488' => BankInfo(
        nameFa: 'بانک کارآفرین',
        nameEn: 'karafarin',
        code: '627488',
      ),
    '621986' => BankInfo(
        nameFa: 'بانک سامان',
        nameEn: 'saman',
        code: '621986',
      ),
    '639346' => BankInfo(
        nameFa: 'بانک سینا',
        nameEn: 'sina',
        code: '639346',
      ),
    '639607' => BankInfo(
        nameFa: 'بانک سرمایه',
        nameEn: 'sarmaye',
        code: '639607',
      ),
    '504706' => BankInfo(
        nameFa: 'بانک شهر',
        nameEn: 'shahr',
        code: '504706',
      ),
    '502806' => BankInfo(
        nameFa: 'بانک شهر',
        nameEn: 'shahr',
        code: '502806',
      ),
    '502938' => BankInfo(
        nameFa: 'بانک دی',
        nameEn: 'day',
        code: '502938',
      ),
    '603769' => BankInfo(
        nameFa: 'بانک صادرات',
        nameEn: 'saderat',
        code: '603769',
      ),
    '610433' => BankInfo(
        nameFa: 'بانک ملت',
        nameEn: 'mellat',
        code: '610433',
      ),
    '627353' => BankInfo(
        nameFa: 'بانک تجارت',
        nameEn: 'tejarat',
        code: '627353',
      ),
    '585983' => BankInfo(
        nameFa: 'بانک تجارت',
        nameEn: 'tejarat',
        code: '585983',
      ),
    '589463' => BankInfo(
        nameFa: 'بانک رفاه',
        nameEn: 'refah',
        code: '589463',
      ),
    '627381' => BankInfo(
        nameFa: 'بانک انصار',
        nameEn: 'ansar',
        code: '627381',
      ),
    '639370' => BankInfo(
        nameFa: 'بانک مهراقتصاد',
        nameEn: 'mehreqtesad',
        code: '639370',
      ),
    '639599' => BankInfo(
        nameFa: 'بانک قوامین',
        nameEn: 'ghavamin',
        code: '639599',
      ),
    '504172' => BankInfo(
        nameFa: 'بانک رسالت',
        nameEn: 'resalat',
        code: '504172',
      ),
    '505416' => BankInfo(
        nameFa: 'بانک گردشگری',
        nameEn: 'tourism',
        code: '505416',
      ),
    _ => BankInfo(
        nameFa: 'نامشخص',
        nameEn: 'Unknown',
        code: '-',
      ),
  };
}

/// ## [getBankFromShaba] Function Documentation
///
/// Retrieves bank information based on the provided SHABA number.
///
/// ### Parameters:
/// - `shabaNumber`: A string representing the SHABA number.
///
/// ### Returns:
/// - A [BankInfo] object representing the bank information corresponding to the provided SHABA number.
/// - Returns `null` if the SHABA number is invalid or if the bank information is not found.
///
/// ### Usage:
/// ```dart
/// String shabaNumber = 'IR820540102680020817909002'; // Example SHABA number
/// BankInfo? bank = getBankFromShaba(shabaNumber);
/// print(bank); // Output: BankInfo: بانک توسعه صادرات, tooseesaderat, 020
/// ```
BankInfo? getBankFromShaba(String shabaNumber) {
  if (RegExp(r'^(IR|ir)\d{24}$').hasMatch(shabaNumber) ||
      RegExp(r'^\d{24}$').hasMatch(shabaNumber)) {
    String shaba = shabaNumber;

    if (shabaNumber.contains(RegExp(r'(IR|ir)'))) {
      shaba = shaba.replaceAll(RegExp(r'(IR|ir)'), '');
    }

    return switch (shaba.substring(2, 5)) {
      '010' => BankInfo(
          nameFa: 'بانک مرکزی',
          nameEn: 'meli',
          code: '010',
        ),
      '011' => BankInfo(
          nameFa: 'بانک صنعت و معدن',
          nameEn: 'sanatmadan',
          code: '011',
        ),
      '012' => BankInfo(
          nameFa: 'بانک ملت',
          nameEn: 'mellat',
          code: '012',
        ),
      '013' => BankInfo(
          nameFa: 'بانک رفاه',
          nameEn: 'refah',
          code: '013',
        ),
      '014' => BankInfo(
          nameFa: 'بانک مسکن',
          nameEn: 'maskan',
          code: '014',
        ),
      '015' => BankInfo(
          nameFa: 'بانک سپه',
          nameEn: 'sepah',
          code: '015',
        ),
      '016' => BankInfo(
          nameFa: 'بانک کشاورزی',
          nameEn: 'keshavarsi',
          code: '016',
        ),
      '017' => BankInfo(
          nameFa: 'بانک ملی ایران',
          nameEn: 'meli',
          code: '017',
        ),
      '018' => BankInfo(
          nameFa: 'بانک تجارت',
          nameEn: 'tejarat',
          code: '018',
        ),
      '019' => BankInfo(
          nameFa: 'بانک صادرات',
          nameEn: 'saderat',
          code: '019',
        ),
      '020' => BankInfo(
          nameFa: 'بانک توسعه صادرات',
          nameEn: 'tooseesaderat',
          code: '020',
        ),
      '021' => BankInfo(
          nameFa: 'پست بانک ایران',
          nameEn: 'postbank',
          code: '021',
        ),
      '022' => BankInfo(
          nameFa: 'بانک توسعه تعاون',
          nameEn: 'toosetaavon',
          code: '022',
        ),
      '051' => BankInfo(
          nameFa: 'موسسه اعتباری توسعه',
          nameEn: 'etebaritosee',
          code: '051',
        ),
      '053' => BankInfo(
          nameFa: 'بانک کارآفرین',
          nameEn: 'karafarin',
          code: '053',
        ),
      '054' => BankInfo(
          nameFa: 'بانک پارسیان',
          nameEn: 'parsian',
          code: '054',
        ),
      '055' => BankInfo(
          nameFa: 'بانک اقتصاد نوین',
          nameEn: 'eghtesad novin',
          code: '055',
        ),
      '056' => BankInfo(
          nameFa: 'بانک سامان',
          nameEn: 'saman',
          code: '056',
        ),
      '057' => BankInfo(
          nameFa: 'بانک پاسارگاد',
          nameEn: 'pasargad',
          code: '057',
        ),
      '058' => BankInfo(
          nameFa: 'بانک سرمایه',
          nameEn: 'sarmaye',
          code: '058',
        ),
      '059' => BankInfo(
          nameFa: 'بانک سینا',
          nameEn: 'sina',
          code: '059',
        ),
      '060' => BankInfo(
          nameFa: 'بانک قرض الحسنه مهر',
          nameEn: 'gharzolhasaneh',
          code: '060',
        ),
      '061' => BankInfo(
          nameFa: 'بانک شهر',
          nameEn: 'shahr',
          code: '061',
        ),
      '610' => BankInfo(
          nameFa: 'بانک شهر',
          nameEn: 'shahr',
          code: '061',
        ),
      '062' => BankInfo(
          nameFa: 'بانک آینده',
          nameEn: 'ayandeh',
          code: '062',
        ),
      '063' => BankInfo(
          nameFa: 'بانک انصار',
          nameEn: 'ansar',
          code: '063',
        ),
      '064' => BankInfo(
          nameFa: 'بانک گردشگری',
          nameEn: 'gardeshgari',
          code: '064',
        ),
      '065' => BankInfo(
          nameFa: 'بانک حکمت ایرانیان',
          nameEn: 'hekmat',
          code: '065',
        ),
      '066' => BankInfo(
          nameFa: 'بانک دی',
          nameEn: 'day',
          code: '066',
        ),
      '069' => BankInfo(
          nameFa: 'بانک ایران زمین',
          nameEn: 'iranzamin',
          code: '069',
        ),
      _ => BankInfo(
          nameFa: 'نامشخص',
          nameEn: 'Unknown',
          code: '-',
        ),
    };
  }
  return null;
}
