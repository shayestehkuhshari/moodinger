import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/model/enums/activity_type_enum.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 70,
            color: Color(0xff1C1F2E),
            child: TabBar(
              controller: tabController,
              labelStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
              indicatorPadding: EdgeInsets.symmetric(horizontal: 17),
              indicatorColor: Color(0xffF35383),
              indicatorWeight: 2,
              tabs: [
                Tab(
                  text: 'Following',
                ),
                Tab(
                  text: 'You',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                _getSampleList(),
                _getSampleList(),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget _getSampleList() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 32),
            child: Text(
              'New',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'GB', color: Colors.white),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _getRow(ActivityStatus.likes),
            childCount: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'Today',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'GB', color: Colors.white),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _getRow(ActivityStatus.followBack),
            childCount: 3,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'Thisweek',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'GB', color: Colors.white),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _getRow(ActivityStatus.following),
            childCount: 2,
          ),
        ),
      ],
    );
  }

  Widget _getRow(ActivityStatus status) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration:
                BoxDecoration(color: Color(0xffF35383), shape: BoxShape.circle),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('images/Rectangle7.png'),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'shiiintech',
                    style: TextStyle(
                        fontFamily: 'GB', fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Startesd following ',
                    style: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'You',
                    style: TextStyle(
                        fontFamily: 'GM',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '3min',
                    style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 12,
                        color: Color(0xffC5C5C5)),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          _getActionActivityRow(status),
        ],
      ),
    );
  }

  Widget _getActionActivityRow(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.followBack:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(50, 34),
            primary: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            textStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
          ),
          onPressed: () {},
          child: Text('Follow'),
        );
      case ActivityStatus.likes:
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('images/Rectangle2.png'),
            ),
          ),
        );
      case ActivityStatus.following:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
              color: Color(0xffC5C5C5),
            ),
          ),
          style: OutlinedButton.styleFrom(
            minimumSize: Size(50, 34),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            side: BorderSide(
              color: Color(0xffC5C5C5),
              width: 2,
            ),
          ),
        );
      default:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
              color: Color(0xffC5C5C5),
            ),
          ),
          style: OutlinedButton.styleFrom(
            minimumSize: Size(70, 36),
            side: BorderSide(
              color: Color(0xffC5C5C5),
              width: 2,
            ),
          ),
        );
    }
  }
}
