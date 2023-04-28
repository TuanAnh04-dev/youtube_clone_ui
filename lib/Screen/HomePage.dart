// ignore_for_file: avoid_unnecessary_containers, unnecessary_brace_in_string_interps, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:youtube_clone/google_login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List mylist;
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    mylist = List.generate(10, (i) {
      Container(
        child: Column(
          children: [
            // Image.asset('assets/image/conan-movie-26.jpg'),
            Text(
              "Lần ${i}",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(children: const [
              FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.red,
              ),
              Text(' Youtube'),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.screen_share_sharp),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(Icons.notifications),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: InkWell(
                    onTap: () => Get.to(GoogleOauth(), transition: Transition.downToUp),
                    child: Icon(Icons.supervised_user_circle),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: SizedBox(
              height: heightScreen * 0.04,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: Container(
                      width: 40,
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(2, 1, 2, 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(141, 141, 141, 0.494),
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.compass,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(2, 1, 2, 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(141, 141, 141, 0.494),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Tất cả',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(2, 1, 2, 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(141, 141, 141, 0.494),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Trò chơi',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(2, 1, 2, 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(141, 141, 141, 0.494),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Danh sach kết hợp',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(2, 1, 2, 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(141, 141, 141, 0.494),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Âm nhạc',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(2, 1, 2, 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(141, 141, 141, 0.494),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Tin tức',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(2, 1, 2, 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(141, 141, 141, 0.494),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Hoạt họa',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(2, 1, 2, 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(141, 141, 141, 0.494),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Sách nói',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(2, 1, 2, 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(141, 141, 141, 0.494),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Bóng đá',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SizedBox(
                width: widthScreen,
                height: heightScreen * 0.78,
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: 40,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/image/conan-movie-26.jpg'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
                                child: Container(
                                  height: heightScreen * 0.1,
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage('https://i.pinimg.com/236x/f0/f7/74/f0f7748ef9be8d950871dcb4fc5628af.jpg')),
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
                                child: SizedBox(
                                  width: widthScreen * 0.69,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Thám tử lừng danh Conan: Tàu ngầm sắt màu đen | Trailer | Dự kiến 0.7.2023',
                                        maxLines: 2,
                                        style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Gosho Aoyama cinema (Official) - 1M - 2 ngày trước',
                                        style: TextStyle(
                                          overflow: TextOverflow.clip,
                                          color: Color.fromARGB(255, 179, 179, 179),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
                                child: SizedBox(
                                    child: FaIcon(
                                  FontAwesomeIcons.ellipsisVertical,
                                  color: Colors.white,
                                  size: 13,
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
