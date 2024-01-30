import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<QuoteRequestEvent>((event, emit) {
      emit(QuoteStateLoading());
      print("req triggerd");

      Future.delayed(Duration(seconds: 3), () {
        emit(QuoteStateLoaded(quote: "your Quote is loaded"));
      });
    });
  }
}
