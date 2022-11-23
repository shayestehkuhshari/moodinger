import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/screens/share_bottom_sheet.dart';
import 'package:smooth_corner/smooth_corner.dart';

class HomeScreen extends StatelessWidget {
  final List<String> storyName = [
    'Mojavad_dev',
    'Webq.co',
    'S_mojavad',
    'Arash_313_',
    'Aliii_tech',
    'Abed.kamali',
    'germany.lang',
    'sam_karman',
    'Yasin.3aberi',
    'Reza_omri',
  ];
  final List<String> tagId = [
    'برنامه نویس موبایل',
    'وبکیو | طراح سایت',
    'محمدجواد',
    'مدرس پایتون و جنگو',
    'علی تک',
    'طراح سایت',
    'برنامه نویس سایت',
    'دست سازه های من',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      appBar: _appBar(context),
      body: _body(),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff1C1F2E),
      elevation: 0,
      actions: [
        GestureDetector(
          onTap: () => showBottomSheet(context),
          child: Image.asset(
            'images/icon_direct.png',
          ),
        ),
      ],
      title: Container(
        width: 128,
        height: 24,
        child: Image.asset('images/moodinger_logo.png'),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        barrierColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.2,
              builder: (context, controler) {
                return ShareBottomsheet(
                  controller: controler,
                );
              },
            ),
          );
        });
  }

  Widget _body() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.only(left: 7, top: 8),
            height: 100,
            alignment: Alignment.center,
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) => index == 0
                    ? _iconAddStory(context)
                    : _story(context, index),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 25),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 8,
              (context, index) => _post(context, index),
            ),
          ),
        ),
      ],
    );
  }

  Widget _post(BuildContext context, int i) {
    return Column(
      children: [
        _headerPost(context, i),
        SizedBox(height: 20),
        _contentPost(context, i),
        SizedBox(height: 32),
      ],
    );
  }

  Widget _contentPost(BuildContext context, int i) {
    return Container(
      height: 425,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SmoothClipRRect(
              smoothness: 0.6,
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'images/Rectangle$i.png',
                height: 394,
                width: 394,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset('images/icon_video.png'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SmoothClipRRect(
                smoothness: 0.6,
                borderRadius: BorderRadius.circular(13),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 40, sigmaY: 30),
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.5),
                          Color.fromRGBO(255, 255, 255, 0.2),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset('images/icon_hart.png'),
                            SizedBox(width: 6),
                            Text(
                              '2.6 k',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'GB',
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'images/icon_comments.png',
                            ),
                            SizedBox(width: 6),
                            Text(
                              '300',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'GB',
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Image.asset(
                          'images/icon_share.png',
                        ),
                        Image.asset(
                          'images/icon_save.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerPost(BuildContext context, int i) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Row(
        children: [
          SmoothClipRRect(
            smoothness: 0.6,
            side: BorderSide(color: Color(0xffF35383), width: 2),
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Image.asset(
                'images/story$i.png',
                width: 44,
                height: 44,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${storyName[i]}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'GB',
                ),
              ),
              SizedBox(height: 5),
              Text(
                '${tagId[i]}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'S',
                ),
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'images/icon_menu.png',
          ),
        ],
      ),
    );
  }

  Widget _story(BuildContext context, int i) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SmoothClipRRect(
            smoothness: 0.6,
            side: BorderSide(color: Color(0xffF35383), width: 2),
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Image.asset(
                'images/story${i - 1}.png',
                width: 62,
                height: 62,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          '${storyName[i - 1]}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontFamily: 'GB',
          ),
        )
      ],
    );
  }

  Widget _iconAddStory(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: SmoothClipRRect(
              smoothness: 0.6,
              side: BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: EdgeInsets.all(2),
                child: Image.asset(
                  'images/icon_plus.png',
                  width: 62,
                  height: 62,
                ),
              )),
        ),
        SizedBox(height: 10),
        Text(
          'Your Story',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GB',
            fontSize: 11,
          ),
        )
      ],
    );
  }
}
