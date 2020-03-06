import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


@immutable
abstract class SearchBodyEvent extends Equatable {
  SearchBodyEvent([List props = const <dynamic>[]]) : super();
}

class DefaultPageEvent extends SearchBodyEvent{
  @override
  String toString() => 'DefaultPageEvent';
  DefaultPageEvent() : super([]);
  @override
  List<Object> get props => null;
}

class DeleteSearchLogEvent extends SearchBodyEvent{

  @override
  String toString() => 'DeleteSearchLogEvent';
  DeleteSearchLogEvent() : super([]);
  @override
  List<Object> get props => null;
}

class SearchResultsEvent extends SearchBodyEvent{
  final String searchString;
  @override
  String toString() => 'SearchResultsEvent';
  SearchResultsEvent(this.searchString) : super([searchString]);
  @override
  List<Object> get props => null;
}

class SearchMapEvent extends SearchBodyEvent{
  @override
  String toString() => 'SearchMapEvent';
  SearchMapEvent() : super([]);
  @override
  List<Object> get props => null;
}




