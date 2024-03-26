import 'package:bank/bank.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Obtaining bank information through card number',
    () {
      test(
        'It should return an Instance of `BankInfo` with name `بانک ملی`',
        () {
          // act
          final result = getBankFromCardNumber('6037991236718544');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک ملی');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک ملی`',
        () {
          // act
          final result = getBankFromCardNumber('6037998862664884');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک ملی');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک گردشگری`',
        () {
          // act
          final result = getBankFromCardNumber('5054160740167057');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک گردشگری');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک گردشگری`',
        () {
          // act
          final result = getBankFromCardNumber('5054165657627225');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک گردشگری');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک صادرات`',
        () {
          // act
          final result = getBankFromCardNumber('6037692442473227');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک صادرات');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک صادرات`',
        () {
          // act
          final result = getBankFromCardNumber('6037696106822728');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک صادرات');
        },
      );

      test(
        'It should return null',
        () {
          // act
          final result = getBankFromCardNumber('sjdfskljfkdlsjf');

          // assert
          expect(result, isNull);
        },
      );

      test(
        'It should return an Instance of BankInfo with name `نامشخص`',
        () {
          // act
          final result = getBankFromCardNumber('6038494546822728');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'نامشخص');
        },
      );

      test(
        'It should return null',
        () {
          // act
          final result = getBankFromCardNumber('7987^%^%&klsjfj4564');

          // assert
          expect(result, isNull);
        },
      );
    },
  );

  group(
    'Obtaining bank information through shaba number',
    () {
      test(
        'It should return an Instance of `BankInfo` with name `بانک شهر`',
        () {
          // act
          final result = getBankFromShaba('IR010610000000700742930963');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک شهر');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک گردشگری`',
        () {
          // act
          final result = getBankFromShaba('IR250640016299660754414001');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک گردشگری');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک ملت`',
        () {
          // act
          final result = getBankFromShaba('IR460120020000005235430488');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک ملت');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک سپه`',
        () {
          // act
          final result = getBankFromShaba('IR460150020000005235430488');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک سپه');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک اقتصاد نوین`',
        () {
          // act
          final result = getBankFromShaba('IR580550017580006796564001');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'بانک اقتصاد نوین');
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک اقتصاد نوین`',
        () {
          // act
          final result = getBankFromShaba('IR589980017580006796564001');

          // assert
          expect(result, isA<BankInfo?>());
          expect(result?.nameFa, 'نامشخص');
        },
      );

      test(
        'It should return `null`',
        () {
          // act
          final result = getBankFromShaba('skfjklsjflksdjflksjf');

          // assert
          expect(result, isNull);
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک اقتصاد نوین`',
        () {
          // act
          final result = getBankFromShaba('1254856f4589631258965478');

          // assert
          expect(result, isNull);
        },
      );

      test(
        'It should return an Instance of `BankInfo` with name `بانک اقتصاد نوین`',
        () {
          // act
          final result = getBankFromShaba('1254856IR589631%^*&8965478');

          // assert
          expect(result, isNull);
        },
      );
    },
  );
}
