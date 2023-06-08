// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:vlplhackathon/utils/home_model.dart';

//void main() => runApp(MySlider());

class MySlider extends StatelessWidget {
  const MySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Image carousel'),
        // ),
        body: Carousel(
          options: CarouselOptions(
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
    required options,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   width: MediaQuery.of(context).size.width,
        //   height: 200,
        //   child: PageView.builder(
        //       itemCount: images.length,
        //       pageSnapping: true,
        //       controller: _pageController,
        //       onPageChanged: (page) {
        //         setState(() {
        //           activePage = page;
        //         });
        //       },
        //       itemBuilder: (context, pagePosition) {
        //         bool active = pagePosition == activePage;
        //         return slider(images, pagePosition, active);
        //       }),
        // ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(images.length, activePage))
      ],
    );
  }
}

Card slider(List<String> images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return Card(
    elevation: 0,
    child: Image.network(images[pagePosition]),
  );
}

imageAnimation(PageController animation, List<String> images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(images[pagePosition]),
      ),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  debugPrint("indicator:$currentIndex");
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
