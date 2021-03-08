import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              this.quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(this.quote.author,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800],
                    fontFamily: 'Montserrat')),
            SizedBox(
              height: 6.0,
            ),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete quote'))
          ],
        ),
      ),
    );
  }
}
