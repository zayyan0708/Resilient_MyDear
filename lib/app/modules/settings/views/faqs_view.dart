// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/data/faqs.dart';

class FaqsView extends GetView {
  const FaqsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //leading: Icon(Ic
        //forons.arrow_back),
        foregroundColor: Color(0xFF0C056D),
        title: const Text(
          'FAQs',
          style: TextStyle(
              color: Color(0xFF0C056D),
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xFFF4F3FF),
      body: SingleChildScrollView(
        child: Container(
          //color: Color(0xFFF4F3FF),
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
          child: Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Obx(() => ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  faqs[panelIndex].isExpanded.value = !isExpanded;
                },
                children: faqs.map<ExpansionPanel>((FAQs item) {
                  return ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: ((context, isExpanded) {
                        return ListTile(
                            title: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            item.index.value.toString() + '. ' + item.header,
                            style: item.isExpanded.value
                                ? TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF0C056D),
                                  )
                                : TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF89889B),
                                  ),
                          ),
                        ));
                      }),
                      body: ListTile(
                        title: Padding(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Text(
                            item.body,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF89889B),
                            ),
                          ),
                        ),
                      ),
                      isExpanded: item.isExpanded.value);
                }).toList())),
          ),
        ),
      ),
    );
  }
}


    //   body: Container(
    //     color: Color(0xFFF4F3FF),
    //     padding: EdgeInsets.only(
    //       top: 20,
    //       bottom: 20,
    //     ),
    //     constraints: BoxConstraints(
    //       maxHeight: MediaQuery.of(context).size.height,
    //       maxWidth: MediaQuery.of(context).size.width,
    //     ),
    //     child: Expanded(
    //       child: Container(
    //         color: Colors.red,
    //         // height: MediaQuery.of(context).size.height - 150,
    //         // width: MediaQuery.of(context).size.width,
    //         // child: Expanded(
    //           child: ExpansionPanelList(
    //               expansionCallback: (panelIndex, isExpanded) {
    //                 faqs[panelIndex].isExpanded.value = !isExpanded;
    //               },
    //               children: faqs.map((FAQs item) {
    //                 return ExpansionPanel(
    //                   isExpanded: item.isExpanded.value,
    //                   headerBuilder: ((context, isExpanded) {
    //                     return ListTile(
    //                       title: Text(
    //                         item.header,
    //                         style: TextStyle(
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     );
    //                   }),
    //                   body: ListTile(
    //                     title: Text(
    //                       item.body,
    //                       style: TextStyle(
    //                         color: Colors.black,
    //                       ),
    //                     ),
    //                   ),
    //                 );
    //               }).toList()),
    //         // ),
    //       ),
    //     ),
    //   ),
    // );