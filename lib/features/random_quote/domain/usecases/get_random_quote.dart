import 'package:dartz/dartz.dart';
import 'package:quote_app/core/usecases/usecase.dart';
import 'package:quote_app/features/random_quote/domain/entities/quote.dart';
import 'package:quote_app/features/random_quote/domain/repositories/quote_repository.dart';

import '../../../../core/error/failures.dart';

class GetRandomQuote implements UseCase<Quote, NoParams> {
  final QuoteRepository quoteRepository;

  GetRandomQuote({required this.quoteRepository});
  @override
  Future<Either<Failure, Quote>> call(NoParams params) =>
      quoteRepository.getRandomQuote();
}
