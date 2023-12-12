part of 'movie_upcoming_cubit.dart';

@freezed
class MovieUpcomingState with _$MovieUpcomingState {
  factory MovieUpcomingState.initial() = InitialMovieUpcomingState;

  factory MovieUpcomingState.loading() = LoadingMovieUpcomingState;

  factory MovieUpcomingState.success(
    List<ShowDetail> movies,
  ) = SuccessMovieUpcomingState;

  factory MovieUpcomingState.empty() = EmptyMovieUpcomingState;

  factory MovieUpcomingState.failure(
    String message,
  ) = FailureMovieUpcomingState;
}
