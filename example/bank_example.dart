import 'package:bank/bank.dart';

void main() {
  /// *** bank card number validation *** ///

  // valid card number
  print('5553042241984105'.isValidCardNumber()); // true
  print('5506922400634930'.isValidCardNumber()); // true
  print('5506900490000436'.isValidCardNumber()); // true
  print('2222405343248877'.isValidCardNumber()); // true
  print('6037991236718544'.isValidCardNumber()); // true

  // invalid card number
  print('6037991247518544'.isValidCardNumber()); // false
  print('-'.isValidCardNumber()); // false
  print('chert-o-pert'.isValidCardNumber()); // false
  print('dskjfk9857394kjkd'.isValidCardNumber()); // false
  print('589\$10151221@164'.isValidCardNumber()); // false
  print('5892102512214164'.isValidCardNumber()); // false

  /// *** get bank info from card number *** ///

  // valid card number
  print(getBankFromCardNumber('6037991236718544'));
  // BankInfo: بانک ملی, meli, 603799

  print(getBankFromCardNumber('6037998862664884'));
  // BankInfo: بانک ملی, meli, 603799

  print(getBankFromCardNumber('5054160740167057'));
  // BankInfo: بانک گردشگری, tourism, 505416

  print(getBankFromCardNumber('5054165657627225'));
  // BankInfo: بانک گردشگری, tourism, 505416

  print(getBankFromCardNumber('6037692442473227'));
  // BankInfo: بانک صادرات, saderat, 603769

  print(getBankFromCardNumber('6037696106822728'));
  // BankInfo: بانک صادرات, saderat, 603769

  // invalid card number
  print(getBankFromCardNumber('5044142657627225'));
  // BankInfo: نامشخص, Unknown, -

  print(getBankFromCardNumber('alakimalaki')); // null
  print(getBankFromCardNumber('chert')); // null
  print(getBankFromCardNumber('dsfskfl&*093627846kljsdjfl')); // null

  /// *** get bank info from shaba *** ///

  // valid shaba number

  print(getBankFromShaba('IR010610000000700742930963'));
  // BankInfo: بانک شهر, shahr, 061

  print(getBankFromShaba('IR250640016299660754414001'));
  // BankInfo: بانک گردشگری, gardeshgari, 064

  print(getBankFromShaba('IR390170000000206520242007'));
  // BankInfo: بانک ملی ایران, meli, 017

  print(getBankFromShaba('IR460120020000005235430488'));
  // BankInfo: بانک ملت, mellat, 012

  print(getBankFromShaba('IR490150000003120053254479'));
  // BankInfo: بانک سپه, sepah, 015

  print(getBankFromShaba('IR330190000000335404598005'));
  // BankInfo: بانک صادرات, saderat, 019

  print(getBankFromShaba('IR580550017580006796564001'));
  // BankInfo: بانک اقتصاد نوین, eghtesad novin, 055

  // without IR
  print(getBankFromShaba('010610000000700742930963'));
  // BankInfo: بانک شهر, shahr, 061

  print(getBankFromShaba('250640016299660754414001'));
  // BankInfo: بانک گردشگری, gardeshgari, 064

  // invalid input
  print(getBankFromShaba('sjfksldfjs')); // null
  print(getBankFromShaba('kdsl;k()*87ysfjjlk')); // null
  print(getBankFromShaba('-')); // null
  print(getBankFromShaba('46578646578749879846847654')); // null
}
