import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1_codeyad/model/travelmodel.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  print(travelList.length);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;
  double imgSize = 70;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: size / 1.85,

                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        ),
                        image: DecorationImage(
                          image: AssetImage(travelList[_selectedIndex].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // لایه فید (گرادیان) که روی عکس کشیده می‌شود
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                          gradient: LinearGradient(
                            // نقطه شروع: پایین چپ (مثل خط فیگما)
                            begin: Alignment.bottomLeft,
                            // نقطه پایان: بالا راست
                            end: Alignment.topRight,
                            // معادل 0% و 45% در فیگما
                            stops: const [0.0, 0.45],
                            colors: [
                              // رنگ شروع (می‌توانید از Colors.black یا با کمی شفافیت استفاده کنید)
                              Colors.black.withOpacity(0.85),
                              // رنگ پایان (کاملاً محو و شیشه‌ای)
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),

                    //header icons
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Icon(CupertinoIcons.chevron_back),
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(137, 255, 255, 255),
                              ),
                            ),
                            Container(
                              child: Icon(CupertinoIcons.heart),
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(137, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      right: 15,
                      top: 120,
                      child: SizedBox(
                        width: 100,
                        height: double.maxFinite,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: travelList.length,
                          itemBuilder: (context, index) {
                            return newMethod(index);
                          },
                        ),
                      ),
                    ),

                    Positioned(
                      left: size / 30,
                      bottom: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            travelList[_selectedIndex].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.location_solid,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 2),
                              Text(
                                travelList[_selectedIndex].location,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              width: 2,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Distance',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  travelList[_selectedIndex].distance
                                          .toString() +
                                      ' Km',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              width: 2,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Temp',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  travelList[_selectedIndex].temp,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              width: 2,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      travelList[_selectedIndex].rating
                                          .toString(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          ExpandableText(
                            travelList[_selectedIndex].discription.toString(),
                            expandText: 'show more',
                            collapseText: 'show less',

                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'total price',
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                          150,
                                          0,
                                          0,
                                          0,
                                        ),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '\$' + travelList[_selectedIndex].price,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                  height: 85,
                                  width: 85,
                                  child: Icon(
                                    Icons.chevron_right,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget newMethod(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3.3),
                borderRadius: BorderRadius.all(Radius.circular(20)),

                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(travelList[index].image),
                ),
              ),
              //order?order1:order2
              width: _selectedIndex == index ? imgSize + 15 : imgSize,
              height: _selectedIndex == index ? imgSize + 15 : imgSize,
              duration: Duration(milliseconds: 500),
            ),
          ),
        ),
      ],
    );
  }
}
