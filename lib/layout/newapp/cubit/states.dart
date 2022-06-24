abstract class NewsStates {}

class NewsInitialState extends NewsStates {}

class NewsBottomNaveState extends NewsStates {}

class NewsLoadingBusinessState extends NewsStates {}

class NewsGetBusinessLodingState extends NewsStates {}

class NewsGetBusinessSuccessState extends NewsStates {}

class NewsGetBusinessErrorState extends NewsStates {
  final String error;
  NewsGetBusinessErrorState(this.error);
}

class NewsGetSportLodingState extends NewsStates {}

class NewsGetSportSuccessState extends NewsStates {}

class NewsGetSportErrorState extends NewsStates {
  final String error;
  NewsGetSportErrorState(this.error);
}

class NewsGetScienceLodingState extends NewsStates {}

class NewsGetScienceSuccessState extends NewsStates {}

class NewsGetScienceErrorState extends NewsStates {
  final String error;
  NewsGetScienceErrorState(this.error);
}
