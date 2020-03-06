import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';


@immutable
abstract class SearchBodyState extends Equatable{
 // SearchBodyState([List props = const <dynamic>[]]) : super();
  SearchBodyState([List props = const <dynamic>[]]) : super();
  static const String INITIAL = 'InitialSearchBodyState';
}

class InitialSearchBodyState extends SearchBodyState{

  InitialSearchBodyState():super([]);
  @override
  String toString()=>'InitialSearchBodyState';
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class DefaultSearchState extends SearchBodyState{

  DefaultSearchState():super([]);
  @override
  String toString()=>'DefaultSearchState';
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class SearchResultState extends SearchBodyState{

  SearchResultState():super([]);
  @override
  String toString()=>'SearchResultState';
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class SearchMapState extends SearchBodyState{
  SearchMapState():super([]);
  @override
  String toString()=>'SearchMapState';
  @override
  // TODO: implement props
  List<Object> get props => null;
}

