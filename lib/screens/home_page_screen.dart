import 'package:flutter/material.dart';
import 'package:tab_view_app/model/list.dart';
import 'package:tab_view_app/screens/book_detail_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/superman.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.switch_right_sharp,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hey there, Micheal',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Join our comic community!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TabBar(
                    controller: tabController,
                    labelColor: Colors.black,
                    labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 15,
                    ),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                      color: Colors.grey.shade100,
                    ),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        text: 'Popular',
                      ),
                      Tab(
                        text: 'Manga',
                      ),
                      Tab(
                        text: 'Recent',
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 8,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: content.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    ImageList connect = content[index];
                                    return GestureDetector(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookDetailScreen(contentList:connect))),
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 20),
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(20),
                                              child: Image.asset(
                                                connect.image,
                                              ),
                                          ),
                                      ),
                                    );
                                  },
                              ),
                          ),
                          Text(
                            "Recommended for you",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Expanded(
                              flex: 4,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: recommendedImages.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.asset(
                                              recommendedImages[index].image,
                                            )));
                                  })),
                          Expanded(
                              flex: 4,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: recommendedImagesII.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.asset(
                                              recommendedImagesII[index].image,
                                            )));
                                  })),
                        ],
                      ),
                      Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}