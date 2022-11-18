import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/screens/user_profile_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:blur/blur.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({super.key});
  final List<String> category = [
    'Flutter VIP',
    'Design',
    'Work',
    'Linkedin',
    'Video',
    'Question',
    'Shop',
    'Cast',
    'Message',
    'About',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) => [
            SliverAppBar(
              toolbarHeight: 35,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(top: 18, right: 18),
                  child: Container(
                    width: 17,
                    height: 18,
                    child: Image.asset('images/BurgerMenue.png'),
                  ),
                ),
              ],
              backgroundColor: Color(0xff1C1F2E),
              expandedHeight: 120,
              flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image.asset(
                    'images/header.png',
                    fit: BoxFit.cover,
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff1C1F2E00),
                              Color(0xff1C1F2E),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Container(
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xffF35383),
                        ),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('images/profile1.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 24),
                    child: Text(
                      'شایسته برنامه نویس موبایل',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'SM', fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      '@shiiintech',
                      style: TextStyle(
                          color: Color(0xffC5C5C5),
                          fontFamily: 'GB',
                          fontSize: 12),
                    ),
                  ),
                ],
              )),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Posts',
                                  style: TextStyle(
                                      color: Color(0xffC5C5C5),
                                      fontFamily: 'GM',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '23',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'GB',
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                      color: Color(0xffC5C5C5),
                                      fontFamily: 'GM',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '16.2K',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'GB',
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Following',
                                  style: TextStyle(
                                      color: Color(0xffC5C5C5),
                                      fontFamily: 'GM',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '280',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'GB',
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'برنامه‌نویسی فلاتر و اندروید ، مدرس محبوب‌ترین دوره مـکتـبـخونـه و بـرنـامـه',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'S'),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'نــویــس ســابـق زریـن پـال تـخــصـص بـرنـامـه‌نـویسی یعنی آینـده و تـاثـیر گـذاری',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'S'),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '👇آموزش رایگان ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'S'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/icon_link.png',
                        ),
                        Text(
                          '  github.com/shayestehkuhshari',
                          style: TextStyle(
                            color: Color(0xff55B9F7),
                            fontSize: 12,
                            fontFamily: 'GB',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(155, 35),
                              primary: Color(0xffF35383),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              textStyle:
                                  TextStyle(fontFamily: 'GB', fontSize: 14),
                            ),
                            onPressed: () {},
                            child: Text('Follow'),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Message',
                              style: TextStyle(
                                  fontFamily: 'GB',
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(155, 35),
                              primary: Color(0xffF35383),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              side: BorderSide(
                                color: Color(0xffC5C5C5),
                                width: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: 7, right: 17),
                height: 95,
                alignment: Alignment.center,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 11,
                  itemBuilder: (context, index) => index == 0
                      ? _iconAddHilight(context)
                      : _hilight(context, index, index),
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: TabBarViewDeligate(
                TabBar(
                    indicatorPadding:
                        EdgeInsets.only(left: 18, right: 18, bottom: 3),
                    indicatorColor: Color(0xffF35383),
                    indicatorWeight: 2,
                    tabs: [
                      Tab(
                        icon: Image.asset('images/icon_tab_posts.png'),
                      ),
                      Tab(
                        icon: Image.asset('images/icon_tab_bookmark.png'),
                      ),
                    ]),
              ),
            ),
          ],
          body: TabBarView(
            children: [
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
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
                              child: Image.asset('images/Rectangle$index.png'),
                            ),
                          ),
                        );
                      }), childCount: 9),
                      gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ]),
                    ),
                  ),
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
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
                              child: Image.asset('images/item$index.png'),
                            ),
                          ),
                        );
                      }), childCount: 10),
                      gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      /* NestedScrollView(
          headerSliverBuilder: (context, IsScrolled) => [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(color: Colors.red),
                      ),
                    ),
                  ),
                  backgroundColor: Color(0xff1C1F2E),
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'images/header.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
          body: Text('test')),*/
    );
  }

  Widget _hilight(BuildContext context, int i, index) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 56,
          height: 56,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'images/hilight$i.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          '${category[index - 1]}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontFamily: 'GS',
          ),
        )
      ],
    );
  }

  Widget _iconAddHilight(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
          ),
          child: Image.asset(
            'images/icon_plus.png',
          ),
        ),
        SizedBox(height: 12),
        Text(
          'New',
          style: TextStyle(color: Colors.white, fontFamily: 'GS', fontSize: 10),
        )
      ],
    );
  }
}

class TabBarViewDeligate extends SliverPersistentHeaderDelegate {
  TabBarViewDeligate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xff1C1F2E),
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
