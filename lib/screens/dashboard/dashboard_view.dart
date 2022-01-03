import 'package:flutter/material.dart';
import 'package:flutter_jsonplaceholder/screens/comments/comments_view.dart';
import 'package:flutter_jsonplaceholder/screens/photo/photo_view.dart';

import '../posts/posts_view.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Mock API')),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Posts'),
                Tab(text: 'Comments'),
                Tab(
                  text: 'Photo',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              PostsPage(),
              CommentsPage(),
              PhotoPage(),
            ],
          ),
        ),
      );
}
