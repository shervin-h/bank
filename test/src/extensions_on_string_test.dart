import 'package:bank/bank.dart';
import 'package:test/test.dart';

void main() {
  group(
    'A group of Bank card number validation tests',
    () {
      test(
        'It should return `true`',
        () {
          // act
          final result = '5553042241984105'.isValidCardNumber();

          // assert
          expect(result, isTrue);
        },
      );

      test(
        'It should return `true`',
        () {
          // act
          final result = '5506922400634930'.isValidCardNumber();

          // assert
          expect(result, isTrue);
        },
      );

      test(
        'It should return `true`',
        () {
          // act
          final result = '5506900490000436'.isValidCardNumber();

          // assert
          expect(result, isTrue);
        },
      );

      test(
        'It should return `true`',
        () {
          // act
          final result = '2222405343248877'.isValidCardNumber();

          // assert
          expect(result, isTrue);
        },
      );

      test(
        'It should return `false`',
        () {
          // act
          final result = '2222405356248877'.isValidCardNumber();

          // assert
          expect(result, isFalse);
        },
      );

      test(
        'It should return `false`',
        () {
          // act
          final result = '2233205356248877'.isValidCardNumber();

          // assert
          expect(result, isFalse);
        },
      );

      test(
        'It should return `false`',
        () {
          // act
          final result = 'kaldjlajfdlkjf'.isValidCardNumber();

          // assert
          expect(result, isFalse);
        },
      );

      test(
        'It should return `false`',
        () {
          // act
          final result = 'dsklkjf  sdfjj 73485'.isValidCardNumber();

          // assert
          expect(result, isFalse);
        },
      );

      test(
        'It should return `false`',
        () {
          // act
          final result = '342&^%ndjsh73485'.isValidCardNumber();

          // assert
          expect(result, isFalse);
        },
      );
    },
  );

  group(
    'Convert persian/farsi numbers to english',
    () {
      test(
        'It should return `1234567890`',
        () {
          // arrange
          const sampleString = '۱۲۳۴۵۶۷۸۹۰';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, '1234567890');
        },
      );

      test(
        'It should return `1234gf7890`',
        () {
          // arrange
          const sampleString = '۱۲۳۴gf۷۸۹۰';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, '1234gf7890');
        },
      );

      test(
        'It should return `alakimalaki`',
        () {
          // arrange
          const sampleString = 'alakimalaki';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, 'alakimalaki');
        },
      );

      test(
        'It should return ``',
        () {
          // arrange
          const sampleString = '';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, '');
        },
      );

      test(
        'It should return `1234567890`',
        () {
          // arrange
          const sampleString = '1234567890';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, '1234567890');
        },
      );
    },
  );
}
