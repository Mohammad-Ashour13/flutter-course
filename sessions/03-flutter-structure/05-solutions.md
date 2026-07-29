# إرشادات وحلول — الجلسة الثالثة

الحلول القابلة للتشغيل:

- شجرة Widgets: `code/01_widget_tree_app.dart`.
- العداد: `code/02_counter_app.dart`.
- تطبيق الرسالة: `code/03_message_app.dart`.

## منطق منع القيمة السالبة

```dart
void decrement() {
  if (counter > 0) {
    setState(() {
      counter--;
    });
  }
}
```

## منطق إظهار وإخفاء نص

```dart
bool isVisible = false;

void toggleVisibility() {
  setState(() {
    isVisible = !isVisible;
  });
}
```

داخل الواجهة يمكن استخدام:

```dart
if (isVisible) const Text('Secret message')
```

## نقاط التقييم

- يستطيع الطالب رسم شجرة الواجهة.
- يختار Stateless للواجهة الثابتة وStateful للحالة الداخلية المتغيرة.
- يضع قيم الحالة داخل كائن `State`.
- يغير الحالة داخل `setState`.
- يمرر callback صحيحًا إلى `onPressed`.
- يشرح الفرق بين Hot Reload وHot Restart من تجربته.

