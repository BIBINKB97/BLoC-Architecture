import 'package:bloc_architecture/pages/quotes/bloc/quote_bloc.dart';
import 'package:bloc_architecture/pages/quotes/widgets/custom_button.dart';
import 'package:bloc_architecture/pages/quotes/widgets/error_message.dart';
import 'package:bloc_architecture/pages/quotes/widgets/quote_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          children: [
            // QuoteWidget(
            //   quote: "Be yourself ; everyone else is already taken",
            // ),
            // ErrorMessage(error: "Some error occured"),
            // CircularProgressIndicator(
            //   color: Colors.purple,
            // ),
            Expanded(child: Center(
              child:
                  BlocBuilder<QuoteBloc, QuoteState>(builder: (context, state) {
                if (state is QuoteInitial) {
                  return Text("your quote is waiting");
                } else if (state is QuoteStateLoading) {
                  return CircularProgressIndicator(
                    color: Colors.purple,
                  );
                } else if (state is QuoteStateLoaded) {
                  return QuoteWidget(quote: state.quote);
                } else if (state is QuoteStateError) {
                  return ErrorMessage(error: state.error);
                }
                return ErrorMessage(error: "something went wrong");
              }),
            )),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
