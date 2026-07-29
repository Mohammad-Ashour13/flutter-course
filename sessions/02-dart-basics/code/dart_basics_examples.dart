void main() {
  variablesExample();
  listExample();
  mapExample();
  classExample();
  inheritanceExample();
  constantsExample();
  conditionsExample();
  loopsExample();
  functionsExample();
}

void variablesExample() {
  String name = 'Lina';
  int age = 15;
  double average = 87.5;
  bool isPresent = true;
  var favoriteColor = 'blue'; // Dart infers String.

  print('$name, $age, $average, $isPresent, $favoriteColor');
}

void listExample() {
  final List<String> hobbies = ['drawing', 'football'];
  hobbies.add('coding');

  print(hobbies);
  print('First hobby: ${hobbies[0]}');
  print('Number of hobbies: ${hobbies.length}');
}

void mapExample() {
  final Map<String, int> grades = {
    'math': 90,
    'science': 84,
  };
  grades['english'] = 88;

  print(grades);
  print('Math grade: ${grades['math']}');
}

class Student {
  String name;
  int age;

  Student(this.name, this.age);

  void introduce() {
    print('My name is $name and I am $age years old.');
  }
}

void classExample() {
  final student = Student('Lina', 15);
  student.introduce();
}

class ClubLeader extends Student {
  String responsibility;

  ClubLeader(String name, int age, this.responsibility) : super(name, age);

  void describeRole() {
    print('$name is responsible for $responsibility.');
  }
}

void inheritanceExample() {
  final leader = ClubLeader('Omar', 16, 'welcoming new students');
  leader.introduce();
  leader.describeRole();
}

void constantsExample() {
  final loginTime = DateTime.now();
  const int passingGrade = 60;

  print('Login time: $loginTime');
  print('Passing grade: $passingGrade');
}

void conditionsExample() {
  const int grade = 72;

  if (grade >= 60) {
    print('Passed');
  } else {
    print('Needs another try');
  }
}

void loopsExample() {
  final hobbies = ['drawing', 'football', 'coding'];

  for (final hobby in hobbies) {
    print('I like $hobby');
  }

  for (var index = 0; index < hobbies.length; index++) {
    print('Hobby ${index + 1}: ${hobbies[index]}');
  }

  var countdown = 3;
  while (countdown > 0) {
    print(countdown);
    countdown--;
  }
}

void sayHello(String name) {
  print('Hello, $name!');
}

int add(int first, int second) {
  return first + second;
}

int multiply(int first, int second) => first * second;

void greet(String name, [String title = 'Student']) {
  print('Hello, $title $name');
}

void functionsExample() {
  sayHello('Lina');
  print(add(4, 6));
  print(multiply(3, 5));
  greet('Omar');

  final numbers = [1, 2, 3, 4];
  numbers.forEach((number) {
    print(number * 2);
  });
}

