import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc_respository.dart';
import 'search_body_state.dart';

class SearchBodyBloc extends Bloc<SearchBodyEvent, SearchBodyState> {
  static final SearchBodyBloc searchBlocSingleton = SearchBodyBloc._internal();
  factory SearchBodyBloc() {
    return searchBlocSingleton;
  }
  SearchBodyBloc._internal();


  @override
  // TODO: implement initialState
  SearchBodyState get initialState => InitialSearchBodyState();

  @override
  Stream<SearchBodyState> mapEventToState(SearchBodyEvent event) async* {
    print('SearchBodyBloc mapToState -----');
    print('event = $event');

    if (event is SearchMapEvent) {
      yield InitialSearchBodyState();
      yield SearchMapState();
    }

    if (event is DefaultPageEvent) {
      yield InitialSearchBodyState();
      yield DefaultSearchState();
    }

    if (event is SearchResultsEvent) {
      yield InitialSearchBodyState();
      yield SearchResultState();
      }

    }



  }

