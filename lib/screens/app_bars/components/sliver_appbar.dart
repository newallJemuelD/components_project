import 'package:flutter/material.dart';

class SliverAppbar extends StatelessWidget {
  const SliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: true,
          pinned: false,
          floating: true,
          flexibleSpace: const FlexibleSpaceBar(
            centerTitle: true,
            title: Text("Sliver app bar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                )),
            // background: Image.network(
            //   "https://i.ibb.co/QpWGK5j/Geeksfor-Geeks.png",
            //   fit: BoxFit.cover,
            // ),
          ),
          expandedHeight: 230,
          backgroundColor: Colors.blue[400],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              tileColor: (index % 2 == 0) ? Colors.white : Colors.blue[50],
              title: Center(
                child: Text(
                  '$index',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 50,
                    color: Colors.blue[400],
                  ),
                ),
              ),
            ),
            childCount: 51,
          ),
        )
      ],
    ));
  }
}
