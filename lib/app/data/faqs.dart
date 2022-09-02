import 'package:get/get.dart';

class FAQs {
  FAQs(
      {required this.body,
      required this.header,
      required this.isExpanded,
      required this.index});
  String body;
  String header;
  RxBool isExpanded;
  RxInt index;
}

List<FAQs> faqs = [
  FAQs(
    index: 0.obs,
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'What is Type I Diabetes',
    isExpanded: false.obs,
  ),
  FAQs(
    index: 1.obs,
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'What is Type II Diabetes',
    isExpanded: false.obs,
  ),
  FAQs(
    index: 2.obs,
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'What should my blood sugar be?',
    isExpanded: false.obs,
  ),
  FAQs(
    index: 3.obs,
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'What is an A1c?',
    isExpanded: false.obs,
  ),
  FAQs(
    index: 4.obs,
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'What are symptoms of high and low blood sugar?',
    isExpanded: false.obs,
  ),
  FAQs(
    index: 5.obs,
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'What is the treatment for high or low blood sugar?',
    isExpanded: false.obs,
  ),
  FAQs(
    index: 6.obs,
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'Dietary Information (carb counting)',
    isExpanded: false.obs,
  ),
  FAQs(
    index: 7.obs,
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'Exercise',
    isExpanded: false.obs,
  ),
  FAQs(
    index: 8.obs,
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header:
        'Information for RX Discount Programs and participating pharmacies.',
    isExpanded: false.obs,
  ),
];


// Scaffold(
//       appBar: AppBar(
//         title: Text('Expansion Panel List'),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           margin: EdgeInsets.only(top: 20, bottom: 20),
//           child: Obx(() => ExpansionPanelList(
//               expansionCallback: (panelIndex, isExpanded) {
//                 faqs[panelIndex].isExpanded.value = !isExpanded;
//               },
//               children: faqs.map<ExpansionPanel>((FAQs item) {
//                 return ExpansionPanel(
//                     canTapOnHeader: true,
//                     headerBuilder: ((context, isExpanded) {
//                       return ListTile(title: Text(item.header));
//                     }),
//                     body: ListTile(
//                       title: Text(item.body),
//                     ),
//                     isExpanded: item.isExpanded.value);
//               }).toList())),
//         ),
//       ),
//     );