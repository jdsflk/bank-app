import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionListItem extends StatelessWidget {

  final String recipient;
  final DateTime date;
  final int value;

  TransactionListItem({this.recipient, this.date, this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipient,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1,
                ),
                Text(
                  DateFormat("yyyy.MM.dd HH:mm").format(date),
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyText1,
                )
              ]),
          Text(
            "-${value}Ft",
            style: Theme.of(context).primaryTextTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
