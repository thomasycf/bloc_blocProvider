import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_respository.dart';
import 'search_body.dart';



class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchBodyBloc _searchBodyBloc = SearchBodyBloc();
//   SearchPageBlocStream _searchPageBlocStream = SearchPageBlocStream();

  @override
  void initState() {
    print('search page init-------------');
    _searchBodyBloc.add(DefaultPageEvent());
    super.initState();
  }

  @override
  void dispose() {
    print('search page dispose----------------');
    _searchBodyBloc.add(DefaultPageEvent());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
            return SafeArea(
              child: BlocProvider(
                create: (context)=>_searchBodyBloc,
                child: Scaffold(
                  appBar: AppBar(
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
//                     _searchPageBloc.add(CloseSearchPageEvent());
                      },
                    ),
                    title: Container(
                      width: 200.0,
                      child: Text('SearchPage')
                    ),
                    actions: <Widget>[

                    ],
                  ),
                  body: Builder(
    builder: (BuildContext context) {
      return BlocBuilder<SearchBodyBloc, SearchBodyState>(
        //  bloc: _searchBodyBloc,
        builder: (context, state) {
          print('SearchPage searchBodyBloc state = $state');
          if (state is SearchMapState) {
            return Center(
              child: Text("Search Map Page"),
            );
          } else {
            return SearchBody();
          }
        },
      );
    },
                  ),
                ),
              ),
          );
  }
}


