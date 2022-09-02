// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:my_dear_app/app/data/dummy.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SubscriberChart extends StatelessWidget {
  SubscriberChart({required this.data});
  final List<SubscriberSeries> data;

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
        id: 'Subscribers',
        data: data,
        domainFn: (SubscriberSeries series, _) => series.year,
        measureFn: (SubscriberSeries series, _) => series.subscribers,
//colorFn: (SubscriberSeries series, _) => series.barColor,
      )
    ];

    return Container(
      height: 400,
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text("World of Warcraft Subscribers by Year",
                  style: Theme.of(context).textTheme.bodyText1),
              Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
