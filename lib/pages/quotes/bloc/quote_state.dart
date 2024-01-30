part of 'quote_bloc.dart';

@immutable
sealed class QuoteState {}

final class QuoteInitial extends QuoteState {}

class QuoteStateLoading extends QuoteState {}

class QuoteStateLoaded extends QuoteState {
  final String quote;

  QuoteStateLoaded({required this.quote});
}

class QuoteStateError extends QuoteState {
  final String error;

  QuoteStateError({required this.error});
}
