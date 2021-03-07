import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'quote.dart';
import 'quoted_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuoteList(),
    );
  }
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde', text: 'Be yourself; everyone is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple'),
  ];

  Widget quoteTemplate(Quote quote) {
    return QuoteCard(quote: quote,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes' , style: TextStyle(fontFamily: 'Montserrat'),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: quotes
              .map((e) => quoteTemplate(e))
              .toList()),
    );
  }
}

