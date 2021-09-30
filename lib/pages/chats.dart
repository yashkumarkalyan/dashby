import 'package:flutter/material.dart';
import '../util/account_tab1.dart';
import '../util/account_tab2.dart';

class UserChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'createdbykoko',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(children: [
              AccountTab1(),
              AccountTab2(),
            ]),
          )
        ]),
      ),
    );
  }
}
