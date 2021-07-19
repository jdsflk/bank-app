import 'package:bank_app/widgets/transaction_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kezdőlap"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 10.0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    "Perger Patrik Kristóf",
                    style: TextStyle(
                        fontSize: 24.5,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                  child: Text(
                    "84567329-0164",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 8.0),
                    child: Text(
                      "Egyenleg: 10 000 000 000Ft",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    )),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Legutóbbi tranzakciók",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      TransactionListItem(
                        recipient: "Konzolvilág Kft",
                        date: DateTime(2021, 07, 17, 9, 37),
                        value: 8990,
                      ),
                      TransactionListItem(
                        recipient: "Tesco",
                        date: DateTime(2021, 07, 10, 17, 00),
                        value: 129,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "New transaction",
        child: Icon(Icons.add),
        onPressed: () => print("Megnyomtad a gombot!"),
      ),
    );
  }
}
