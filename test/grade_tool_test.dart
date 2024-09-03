import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool_scaler/grade_tool.dart';


void main() {
  group('GradeConverter', () {
    test('should return A for grades 90 to 100', () {
      expect(GradeConverter.convert(90), 'A');
      expect(GradeConverter.convert(95), 'A');
      expect(GradeConverter.convert(100), 'A');
    });

    test('should return B for grades 80 to 89', () {
      expect(GradeConverter.convert(80), 'B');
      expect(GradeConverter.convert(85), 'B');
      expect(GradeConverter.convert(89), 'B');
    });

    test('should return C for grades 70 to 79', () {
      expect(GradeConverter.convert(70), 'C');
      expect(GradeConverter.convert(75), 'C');
      expect(GradeConverter.convert(79), 'C');
    });

    test('should return D for grades 60 to 69', () {
      expect(GradeConverter.convert(60), 'D');
      expect(GradeConverter.convert(65), 'D');
      expect(GradeConverter.convert(69), 'D');
    });

    test('should return F for grades 0 to 59', () {
      expect(GradeConverter.convert(0), 'F');
      expect(GradeConverter.convert(50), 'F');
      expect(GradeConverter.convert(59), 'F');
    });

    test('should throw an ArgumentError for grades below 0 or above 100', () {
      expect(() => GradeConverter.convert(-1), throwsArgumentError);
      expect(() => GradeConverter.convert(101), throwsArgumentError);
    });
  });
}
