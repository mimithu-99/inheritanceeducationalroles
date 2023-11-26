import 'package:inheritance_educationalroles/inheritance_educationalroles.dart';
import 'package:test/test.dart';

void main() {
  group('Teacher Tests', () {
    test('Teacher class creation', () {
      var teacher = Teacher('John Doe');
      expect(teacher, isA<Teacher>());
      expect(teacher.name, equals('John Doe'));
    });
  });

  group('Professor Tests', () {
    test('Professor is a subclass of Teacher', () {
      var professor = Professor('Jane Doe', []);
      expect(professor, isA<Teacher>());
    });

    test('Professor courses list', () {
      var professor =
          Professor('Jane Doe', [Courses.mathematics, Courses.physics]);
      expect(professor.courses,
          containsAll([Courses.mathematics, Courses.physics]));
    });

    test('Professor can teach multiple courses', () {
      var professor =
          Professor('Jane Doe', [Courses.literature, Courses.physics]);
      expect(professor.courses.length, equals(2));
      expect(professor.courses, contains(Courses.literature));
      expect(professor.courses, contains(Courses.physics));
    });
  });
}