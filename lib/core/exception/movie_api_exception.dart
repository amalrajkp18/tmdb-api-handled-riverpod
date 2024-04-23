import 'package:movie_app/core/exception/base_exception.dart';

class MovieApiException extends BaseException {
  final String? apiErrorMessage;
  MovieApiException(this.apiErrorMessage)
      : super(apiErrorMessage ?? "An unknown error occured");
}
