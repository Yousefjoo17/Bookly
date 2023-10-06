import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.red,
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      color: Colors.green,
                    )
                  ],
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: ListViewtest(),
          )
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.blue,
      child: const Text(
        'this is item',
        style: TextStyle(fontSize: 45),
      ),
    );
  }
}

class ListViewtest extends StatelessWidget {
  const ListViewtest({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Item(),
        );
      },
    );
  }
}
