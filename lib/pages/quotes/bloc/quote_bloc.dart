import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<QuoteRequestEvent>((event, emit) async {
      emit(QuoteStateLoading());
      print("req triggerd");

      await Future.delayed(Duration(seconds: 1), () {
        emit(QuoteStateLoaded(quote: " be yourself ; else is alredy taken"));
      });
    });
  }
}
