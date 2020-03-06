
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_respository.dart';

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  //final SearchBodyBloc _searchBodyBloc = SearchBodyBloc();
  SearchBodyBloc _searchBodyBloc;



  @override
  void initState() {
    print('SearchBody init-------------');
    super.initState();
  }

  @override
  void dispose() {
 //   _searchBodyBloc.add(DefaultPageEvent());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(_searchBodyBloc == null){
      _searchBodyBloc = BlocProvider.of<SearchBodyBloc>(context);
    }


    return BlocBuilder<SearchBodyBloc, SearchBodyState>(
    //  bloc: _searchBodyBloc,
      builder: (BuildContext context, SearchBodyState state) {
        print('search page bloc builder - bloc state = $state');
if(state is DefaultSearchState){
  return Center(
    child: Container(
      child: Column(
        children: <Widget>[
          Text('Search History Page'),
          RaisedButton(
            child: Text('Go to Search Result Page'),
            onPressed: (){
              _searchBodyBloc.add(SearchResultsEvent('test'));
            },
          ),
        ],
      ),
    ),
  );
} else if(state is SearchResultState){

  return Center(
    child: Text('Results Page'),
  );
} else{
  return Center(
    child: Text('Blank Page'),
  );
}
      },
    );
  }
}