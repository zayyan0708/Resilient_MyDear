class GlucoseLevel {
  late String time;
  late String date;
  late String month;
  String title = 'Blood Glucose Level';
  late int level;
  GlucoseLevel({
    required this.time,
    required this.date,
    required this.month,
    required this.level,
  });
}

class Medications {
  late String title;
  late List<String> subtitle;
  late String dosage;
  late String mass;
  late String due;

  Medications(
      {required this.title,
      required this.subtitle,
      required this.dosage,
      required this.mass,
      required this.due});
}

List<Medications> medicationList = [
  Medications(
      title: 'Insulin Aspart',
      subtitle: ['NovoLog', 'FlexPen', 'Fiasp'],
      dosage: '2',
      mass: '50',
      due: 'Before Breakfast'),
  Medications(
      title: 'Insulin Aspart',
      subtitle: ['NovoLog', 'Fiasp'],
      dosage: '3',
      mass: '10',
      due: 'Before Dinner'),
  Medications(
      title: 'Insulin Degludec',
      subtitle: ['Tresiba'],
      dosage: '1',
      mass: '40',
      due: 'After Breakfast'),
  Medications(
      title: 'Insulin Aspart',
      subtitle: ['NovoLog', 'FlexPen', 'Fiasp'],
      dosage: '2',
      mass: '50',
      due: 'Before Breakfast'),
  Medications(
      title: 'Insulin Aspart',
      subtitle: ['NovoLog', 'FlexPen', 'Fiasp'],
      dosage: '2',
      mass: '50',
      due: 'Before Breakfast'),
  Medications(
      title: 'Insulin Aspart',
      subtitle: ['NovoLog', 'FlexPen', 'Fiasp'],
      dosage: '2',
      mass: '50',
      due: 'Before Breakfast'),
  Medications(
      title: 'Insulin Aspart',
      subtitle: ['NovoLog', 'Fiasp'],
      dosage: '3',
      mass: '10',
      due: 'Before Dinner'),
  Medications(
      title: 'Insulin Degludec',
      subtitle: ['Tresiba'],
      dosage: '1',
      mass: '40',
      due: 'After Breakfast'),
  Medications(
      title: 'Insulin Aspart',
      subtitle: ['NovoLog', 'FlexPen', 'Fiasp'],
      dosage: '2',
      mass: '50',
      due: 'Before Breakfast'),
  Medications(
      title: 'Insulin Aspart',
      subtitle: ['NovoLog', 'FlexPen', 'Fiasp'],
      dosage: '2',
      mass: '50',
      due: 'Before Breakfast'),
];

class Notification {
  late String text;
  late String time;
  Notification({required this.text, required this.time});
}
