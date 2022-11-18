import 'package:flutter/material.dart';

class AddContentScreen extends StatelessWidget {
  const AddContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            _getWholeScrollingPart(),
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/save.png'),
                    Image.asset('images/gallery.png'),
                    Image.asset('images/camera.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getWholeScrollingPart() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _getHeaderSection(),
        ),
        SliverToBoxAdapter(
          child: _getSelectedImageContainer(),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
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
                    ),
                childCount: 9),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(bottom: 100),
        ),
      ],
    );
  }

  Widget _getSelectedImageContainer() {
    return Container(
      height: 365,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset('images/moon.png'),
        ),
      ),
    );
  }

  Widget _getHeaderSection() {
    return Container(
      padding: EdgeInsets.only(top: 27, right: 17, left: 17, bottom: 15),
      child: Row(
        children: [
          Text(
            'Post',
            style:
                TextStyle(fontFamily: 'GB', fontSize: 16, color: Colors.white),
          ),
          SizedBox(
            width: 15,
          ),
          Image.asset('images/icon_arrow_down.png'),
          Spacer(),
          Text(
            'Next',
            style:
                TextStyle(fontFamily: 'GB', fontSize: 16, color: Colors.white),
          ),
          SizedBox(
            width: 15,
          ),
          Image.asset('images/icon_arrow_right_box.png'),
        ],
      ),
    );
  }
}
