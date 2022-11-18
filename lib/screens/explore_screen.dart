import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreScreen extends StatelessWidget {
  final List<String> category = [
    'All',
    'Account',
    'Hashtag',
    'Caption',
    'Story',
    'Common',
    'Shop',
    'Game',
    'Movie',
    'Favorite',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getContent(),
            ),
            SliverToBoxAdapter(
              child: _getSotryList(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(((context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset('images/explor$index.png'),
                      ),
                    ),
                  );
                }), childCount: 15),
                gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: [
                      QuiltedGridTile(2, 1),
                      QuiltedGridTile(2, 2),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _getContent() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 17, left: 17, top: 12),
          height: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(13),
            ),
            color: Color(0xff272B40),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset('images/icon_search.png'),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                          color: Colors.white, fontFamily: 'GB', fontSize: 14),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Image.asset('images/icon_scan.png'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _getSotryList() {
    return Container(
      height: 23,
      margin: EdgeInsets.only(top: 15, bottom: 15, left: 12),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 23,
              margin: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff272B40),
              ),
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 4),
                  child: Text(
                    '${category[index]}',
                    style: TextStyle(
                        fontFamily: 'GM', fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
