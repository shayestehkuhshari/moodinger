import 'dart:ui';

import 'package:flutter/material.dart';

class ShareBottomsheet extends StatelessWidget {
  const ShareBottomsheet({this.controller, super.key});
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0.5),
                    Color.fromRGBO(255, 255, 255, 0.2),
                  ]),
            ),
            child: _getContent(context)),
      ),
    );
  }

  Widget _getContent(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.bottomCenter, children: [
      CustomScrollView(
        controller: controller,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 5,
                  width: 67,
                  margin: EdgeInsets.only(top: 10, bottom: 22),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Share',
                      style: TextStyle(
                          fontFamily: 'GB', fontSize: 24, color: Colors.white),
                    ),
                    Image.asset('images/icon_share_bottomsheet.png')
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: Color.fromRGBO(255, 255, 255, 0.4)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Image.asset('images/icon_search.png'),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: 'GB',
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              ((context, index) => _getItemGride()),
              childCount: 60,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                mainAxisExtent: 100),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 60),
          ),
        ],
      ),
      Positioned(
        bottom: 10,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(129, 46),
            primary: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Send',
            style: TextStyle(fontFamily: 'GB', fontSize: 18),
          ),
        ),
      ),
    ]);
  }

  Widget _getItemGride() {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Rectanglee 87.png'),
            ),
          ),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          'Anna mari',
          style: TextStyle(fontFamily: 'GB', fontSize: 12, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
