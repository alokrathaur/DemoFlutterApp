import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vlplhackathon/slider.dart';
import 'package:vlplhackathon/utils/home_model.dart';
import '../api/api_call.dart';
import '../utils/constant_string.dart';
import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle unselectStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.normal);
  static const TextStyle selectStyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<home_model> homeData = List<home_model>.empty(growable: true);
  @override
  void initState() {
    super.initState();
    // getHomePageData();
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Categories',
      style: optionStyle,
    ),
    Text(
      'Index 2: Cart',
      style: optionStyle,
    ),
    Text(
      'Index 3: Account',
      style: optionStyle,
    ),
    Text(
      'Index 4: Offers',
      style: optionStyle,
    ),
  ];
  final ScrollController _homeController = ScrollController();
  Widget _listViewBody() {
    return ListView.separated(
        controller: _homeController,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 18.0, 8.0, 8.0),
                child: Text(
                  'Item $index',
                ),
              ),
            );
          } else {
            return Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                child: Text(
                  'Item $index',
                ),
              ),
            );
          }
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
              thickness: 1,
            ),
        itemCount: 10);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SUGAR",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder<home_model>(
          future: getHomePageData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              debugPrint(
                  "Print this ${snapshot.data!.resbody?.sections?.length}");
              return ListView.builder(
                  controller: _homeController,
                  itemBuilder: (BuildContext context, int index) {
                    // if (index == 0) {
                    //   return Center(
                    //     child: Padding(
                    //       padding:
                    //           const EdgeInsets.fromLTRB(8.0, 18.0, 8.0, 8.0),
                    //       child: Text(
                    //         snapshot!.data!.resbody!.sections![index]!.title!,
                    //       ),
                    //     ),
                    //   );
                    // } else {
                    //   return Center(
                    //     child: Padding(
                    //       padding:
                    //           const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                    //       child: Text(
                    //         snapshot!.data!.resbody!.sections![index]!.title!,
                    //       ),
                    //     ),
                    //   );
                    // }
                    return getWidgetFromSection(
                        index, snapshot.data!.resbody!.sections![index]);
                  },
                  itemCount: snapshot.data!.resbody!.sections!.length);
            } else {
              debugPrint("Data Not Found");
              return noDataView("No Data");
            }
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_awesome_mosaic),
              label: 'Categories',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              label: 'Cart',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.discount),
              label: 'Offers',
              backgroundColor: Colors.black),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        selectedLabelStyle: selectStyle,
        unselectedLabelStyle: unselectStyle,
      ),
    );
  }

  Future<home_model> getHomePageData() async {
    // var res = await ApiCall.apiCall(getHistory, {staffId: "2"});
    var res = await ApiCall.getApiCall(homepagev2);
    if (res.statusId == 1) {
      // var decode = jsonDecode(res.body);
      // if (decode["status"] == true && decode["resbody"] != null) {
      //   List<home_model> homeModel = (decode["resbody"]["section"]);
      //   debugPrint("GetHomePage Result:${homeModel.toString()}");
      //   return homeModel;
      // } else {
      //   return List<home_model>.empty();
      // }
      return res;
    } else {
      return home_model();
    }
  }

  Widget getWidgetFromSection(int index, Sections sections) {
    if (sections.layoutType == 13) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 8),
        child: SizedBox(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(sections.contentData![index].mediaUrl!),
                      maxRadius: 35,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
                      child: Text(
                        sections.contentData![index].mediaText!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              },
              itemCount: sections.contentData!.length),
        ),
      );
    } else if (sections.layoutType == 7) {
      debugPrint("SectionData: ${sections.toString()}");
    } else if (sections.layoutType == 4) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
            child: Text(
              sections.title!.toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 220.0 * sections.contentData!.length,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int myindex) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        sections.contentData![myindex].mediaUrl!,
                      ),
                    ),
                  );
                },
                itemCount: sections.contentData!.length),
          ),
        ],
      );
    } else if (sections.layoutType == 1) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 10.0),
            child: Text(
              sections.title!.toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sections.contentData!.length,
              itemBuilder: (BuildContext context, int myIndex) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      sections.contentData![myIndex].mediaUrl!,
                      height: 200,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    } else if (sections.layoutType == 2) {
      List<String> images = [];
      for (var i = 0; i < sections.contentData!.length; i++) {
        images.add(sections.contentData![i].mediaUrl!);
        debugPrint(images[i]);
      }

      int activePage = 0;
      late PageController pageController;
      pageController = PageController(viewportFraction: 1, initialPage: 1);

      return Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 320,
            child: PageView.builder(
                itemCount: sections.contentData!.length,
                pageSnapping: true,
                controller: pageController,
                onPageChanged: (page) {
                  setState(() {
                    activePage = page;
                    debugPrint("activepage:$activePage");
                  });
                },
                itemBuilder: (context, pagePosition) {
                  bool active = pagePosition == activePage;
                  return slider(images, pagePosition, active);
                }),
          ),
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: indicators(images.length, activePage))
        ],
      );
    } else if (sections.layoutType == 13) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 8),
        child: SizedBox(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(sections.contentData![index].mediaUrl!),
                      maxRadius: 35,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
                      child: Text(
                        sections.contentData![index].mediaText!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              },
              itemCount: sections.contentData!.length),
        ),
      );
    }
    if (sections.layoutType == 7 || sections.layoutType == 3) {
      String compareAtPrice = "";
      // if (sections.contentData![index].productJson!.variants != null &&
      //     sections.contentData![index].productJson!.variants!.isNotEmpty &&
      //     sections.contentData![index].productJson!.variants![0]
      //             .compareAtPrice !=
      //         null) {
      //   compareAtPrice = sections
      //       .contentData![index].productJson!.variants![0].compareAtPrice!;
      // }
      // String compareAtPrice = sections.contentData![index].productJson!
      //             .variants![0].compareAtPrice ==
      //         null
      //     ? ""
      //     : sections
      //         .contentData![index].productJson!.variants![0].compareAtPrice!;
      debugPrint(compareAtPrice.toString());
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Text(
              textAlign: TextAlign.left,
              sections.title!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 8),
            child: SizedBox(
              height: 410,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    String compareAtPrice = sections.contentData![index]
                                .productJson!.variants![0].compareAtPrice ==
                            null
                        ? ""
                        : sections.contentData![index].productJson!.variants![0]
                            .compareAtPrice!;
                    var sugarText = "Add To Cart";
                    if (sections.contentData![index].productJson!.sugarType ==
                        1) {
                      sugarText = "Select Shades";
                    } else if (sections
                            .contentData![index].productJson!.sugarType ==
                        2) {
                      sugarText = "Choose Products";
                    } else {
                      sugarText = "Gift";
                    }
                    var isVariant = false;
                    if (sections
                            .contentData![index].productJson!.variants!.length >
                        1) {
                      isVariant = true;
                    } else {
                      isVariant = false;
                    }
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 10,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        width: 170,
                        height: 200,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                sections.contentData![index].productJson!.image!
                                    .src!,
                                height: 230,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                              child: Text(
                                maxLines: 1,
                                sections
                                    .contentData![index].productJson!.title!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.center,
                                      compareAtPrice,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      "   ${sections.contentData![index].productJson!.variants![0].price.toString()}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: isVariant
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/round.png",
                                          width: 20,
                                          height: 20,
                                        ),
                                        Text(
                                          textAlign: TextAlign.center,
                                          "  ${sections.contentData![index].productJson!.variants!.length} shades",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  : Container(
                                      width: 20,
                                      height: 20,
                                    ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: !sugarText.contains("Gift")
                                  ? ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.black)),
                                      onPressed: () {},
                                      child: Container(
                                        height: 30,
                                        width: 120,
                                        color: Colors.black,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 10),
                                        child: Center(
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            sugarText.toUpperCase(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 9.5,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )
                                  : const Text(""),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: sections.contentData!.length),
            ),
          ),
        ],
      );
    }
    return const Center(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Text(
          "",
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
