const int passingGrade = 60;

class Student {
  final String name;
  final int age;
  final List<String> hobbies;
  final Map<String, int> grades;

  Student({
    required this.name,
    required this.age,
    required this.hobbies,
    required this.grades,
  });

  double calculateAverage() {
    if (grades.isEmpty) return 0;

    var total = 0;
    for (final grade in grades.values) {
      total += grade;
    }
    return total / grades.length;
  }

  bool hasPassed() => calculateAverage() >= passingGrade;

  void printReport() {
    print('Student: $name ($age years old)');
    print('Hobbies:');
    for (final hobby in hobbies) {
      print('- $hobby');
    }

    print('Grades:');
    grades.forEach((subject, grade) {
      print('- $subject: $grade');
    });

    print('Average: ${calculateAverage().toStringAsFixed(1)}');
    print(hasPassed() ? 'Result: Passed' : 'Result: Needs another try');
  }
}

class ClubLeader extends Student {
  final String responsibility;

  ClubLeader({
    required super.name,
    required super.age,
    required super.hobbies,
    required super.grades,
    required this.responsibility,
  });

  void printLeadershipRole() {
    print('Club responsibility: $responsibility');
  }
}

void main() {
  final leader = ClubLeader(
    name: 'Lina',
    age: 15,
    hobbies: ['drawing', 'coding'],
    grades: {'math': 90, 'science': 84, 'english': 88},
    responsibility: 'welcoming new students',
  );

  leader.printReport();
  leader.printLeadershipRole();
}

