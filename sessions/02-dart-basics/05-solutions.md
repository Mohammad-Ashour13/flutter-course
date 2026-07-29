# حلول مختصرة — الجلسة الثانية

## قرار النجاح

```dart
void printResult(int grade) {
  if (grade >= 60) {
    print('Passed');
  } else {
    print('Try again');
  }
}
```

## آلة الجمع

```dart
int add(int first, int second) {
  return first + second;
}
```

## أكبر درجة

```dart
int findHighest(List<int> grades) {
  var highest = grades[0];
  for (final grade in grades) {
    if (grade > highest) {
      highest = grade;
    }
  }
  return highest;
}
```

## نقاط التقييم

- يختار الطالب بنية البيانات المناسبة.
- يسمي المتغيرات بأسماء مفهومة.
- يتوقع الناتج قبل التشغيل.
- يصلح خطأه بالاستفادة من الرسالة.
- يستطيع شرح الكود بجملة لكل جزء.

الحلول الكاملة للأمثلة موجودة في مجلد `code`.

