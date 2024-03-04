import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/views/common/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  
  late final TabController _tabController = TabController(length: 2, vsync: this);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              // padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/test.png"))
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Athletics Shoes"),
                    Text("Collection")
                  ],
                ),
              ),
            ),

            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.transparent,
                controller: _tabController,
                isScrollable: true,
                labelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                unselectedLabelColor: tdGrey,
                tabs: const [
                  Tab(text: "Men Shoes"),
                  Tab(text: "Women Shoes"),
                ]
            ),

            Padding(
              padding: const EdgeInsets.all(0.8),
              child: TabBarView(
                controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.2,
                          color: Colors.amber,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.2,
                          color: Colors.red,
                        )
                      ],
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
