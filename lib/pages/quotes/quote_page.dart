import 'package:bloc_architecture/pages/quotes/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quote Home"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: const [
            // QuoteWidget(
            //   quote: "Be yourself ; everyone else is already taken",
            // ),
            // ErrorMessage(error: "Some error occured"),
            // CircularProgressIndicator(
            //   color: Colors.purple,
            // ),
            Expanded(
                child: Center(
              child: Text("your quote is waiting for you"),
            )),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
