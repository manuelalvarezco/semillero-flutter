import 'dart:async';

import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {

  @override
  _ListviewPageState createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {

  ScrollController _scrollController$ = new ScrollController();

  List<int> _numberList = [];
  int _lastItem = 0;

  bool _isLoading = false;

  @override
    void initState() {
      super.initState();
      _addTenImage();

      _scrollController$.addListener(() {
        print('scroll');
        if (_scrollController$.position.pixels == _scrollController$.position.maxScrollExtent) {
          //_addTenImage();
          fetchData();
        }
      });
    }


    @override
      void dispose() {
        // 
        super.dispose();
        _scrollController$.dispose();
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: Stack(
        children: [
          _createList(),
          _createLoading()
        ],
      )
    );
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: getPageOne,
      child: ListView.builder(
        controller: _scrollController$,
        itemCount: _numberList.length,
        itemBuilder: (BuildContext context, int index){

          final image = _numberList[index];

          return Container(
            padding: EdgeInsets.all(8.0),
            child: FadeInImage(
              height: 300.0,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/500/300/?image=$image')
            ),
          );
        },
      ),
    );
  }

  List<String> _addTenImage(){
    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _numberList.add(_lastItem);
    }

    setState(() {
          
    });
  }

  Future fetchData() async{
    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer(
      duration,
      httpRequest
    );
  }

  void httpRequest() {
    _isLoading = false;

    _addTenImage();

    _scrollController$.animateTo(
      _scrollController$.position.pixels + 100, 
      duration: Duration(milliseconds: 250), 
      curve: Curves.fastOutSlowIn
    );
  }

  Widget _createLoading() {
    if(_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15.0,)
        ],
      );
    }
    else{
      return Container();
    }
  }

  Future<void> getPageOne() async{
    final duration = new Duration(seconds: 2);

    new Timer(
      duration,
      (){
        _numberList.clear();
        _lastItem++;

        _addTenImage();
      }
    );

    return Future.delayed(duration);
  }
}