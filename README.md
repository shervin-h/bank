
<img alt="Dart" src="https://img.shields.io/badge/Dart-075898?style=flat-squar&logo=dart&logoColor=white"/>

<p align="center">
  <img src="https://github.com/shervin-h/bank/blob/main/assets/bank.jpg?raw=true">
</p>

# Bank

[![pub package](https://img.shields.io/pub/v/bank.svg)](https://pub.dev/packages/bank)

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Install Package

Add the following line to your `pubspec.yaml` under `dependencies`:

```yaml
dependencies:
  bank: ^1.0.0
```

Then run:

```
dart pub get
```

or

```
flutter pub get
```

## Usage

Import it

```dart
import 'package:radial_progress/radial_progress.dart';
```

<p align="center">
  <img src="https://github.com/shervin-h/bank/blob/main/assets/bank-cards.jpg?raw=true">
</p>

Now in your dart code:

You can easily validate the bank card number.
- The `isValidCardNumber()` functionality is defined as an extension on the String class

به راحتی می توانید شماره کارت بانکی را اعتبارسنجی کنید.
- تابع "isValidCardNumber()" به عنوان یک extension در کلاس String تعریف شده است.

```dart
/// *** bank card number validation *** ///

// valid card number
print('5553042241984105'.isValidCardNumber()); // true
print('5506922400634930'.isValidCardNumber()); // true
print('5506900490000436'.isValidCardNumber()); // true
print('2222405343248877'.isValidCardNumber()); // true
print('6037991236718544'.isValidCardNumber()); // true

// invalid card number
print('6037991247518544'.isValidCardNumber()); // true
print('-'.isValidCardNumber()); // false
print('chert-o-pert'.isValidCardNumber()); // false
print('dskjfk9857394kjkd'.isValidCardNumber()); // false
print('589\$10151221@164'.isValidCardNumber()); // false
print('5892102512214164'.isValidCardNumber()); // false

```

<p align="center">
  <img src="https://github.com/shervin-h/bank/blob/main/assets/shaba-banks.png?raw=true">
</p>

You can get the bank information through the bank card number
If the input string has a valid format, for example, 16 characters and all characters are numbers,
the bank information is returned in the form of an instance of `BankInfo` class.
If the input string is not valid, null is returned.
In some cases, although the input string is correct, the returned object may have an `Unknown` value.

اطلاعات بانک را می توانید از طریق شماره کارت بانکی به دست بیاورید.
اگر رشته ورودی دارای قالب معتبری باشد، برای مثال، 16 کاراکتر باشد و همه کاراکترها عدد باشند،
اطلاعات بانکی در قالب نمونه ای از کلاس 'BankInfo' برگردانده می شود.
اگر رشته ورودی معتبر نباشد، null برگردانده می شود.
در بعضی مواقع با اینکه رشته ورودی صحیح است اما ممکن است شی برگشت داده شده دارای مقدار `نامشخص` باشد.

```dart
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
```

You can get the bank information through the shaba number
If the input string has a valid format, for example, All characters should be numeric except the first two characters which can be IR,
the bank information is returned in the form of an instance of `BankInfo` class.
If the input string is not valid, null is returned.
In some cases, although the input string is correct, the returned object may have an `Unknown` value.

اطلاعات بانک را می توانید از طریق شماره شبا به دست بیاورید.
اگر رشته ورودی دارای قالب معتبری باشد، برای مثال، همه کاراکترها باید عددی باشند به جز دو کاراکتر اول که می‌توانند IR باشند.
اطلاعات بانکی در قالب نمونه ای از کلاس 'BankInfo' برگردانده می شود.
اگر رشته ورودی معتبر نباشد، null برگردانده می شود.
در بعضی مواقع با اینکه رشته ورودی صحیح است اما ممکن است شی برگشت داده شده دارا مقدار نامشخص باشد.

```dart
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
```

### by Shervin Hassanzadeh

Contact me at
<br>

  <a href="https://www.linkedin.com/in/shervin-hassanzadeh/">
    <img alt="linkedin" src="https://img.shields.io/badge/linkedin-0077B5.svg?style=flat-squar&logo=linkedin&logoColor=white"/>
  </a>
  <a href="mailto:shervin.hz07@gmail.com">
    <img alt="Email" src="https://img.shields.io/badge/Email-D14836?style=flat-squar&logo=gmail&logoColor=white"/>
  </a>
  <a href="https://t.me/shervin_hz07">
    <img alt="telegram" src="https://img.shields.io/badge/Telegram-2B9FD1?style=flat-squar&logo=telegram&logoColor=white" />
  </a>
  <a href="https://github.com/shervin-h">
    <img alt="github" src="https://img.shields.io/badge/github-121011.svg?style=flat-squar&logo=github&logoColor=white"/>
  </a>
  <a href="https://stackoverflow.com/users/13066224/shervin">
    <img alt="stackoverflow" src="https://img.shields.io/badge/Stackoverflow-ef8236?style=flat-squar&logo=stackoverflow&logoColor=white" />
  </a>

<br>
