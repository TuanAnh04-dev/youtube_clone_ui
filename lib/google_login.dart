// ignore_for_file: unused_local_variable, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleOauth extends StatefulWidget {
  const GoogleOauth({Key? key}) : super(key: key);

  @override
  State<GoogleOauth> createState() => _GoogleOauthState();
}

class _GoogleOauthState extends State<GoogleOauth> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.close,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Image.asset('assets/image/youtubeloginbackground.png'),
                ),
                const Center(
                  child: Text(
                    "Làm được nhiều việc hơn với Youtube",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Đăng nhập ngay để tải nội dung lên, lưu và bình luận về video",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color.fromRGBO(124, 124, 124, 1)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _googleSignIn.signIn().then((value) {
                      String username = value!.displayName!;
                      String profilePicture = value.photoUrl!;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(35, 171, 255, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                          child: const Text('Đăng nhập'),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(color: Color.fromRGBO(124, 124, 124, 1), thickness: 0.4),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: Icon(
                          Icons.settings,
                          size: 25,
                        ),
                      ),
                      Text(
                        'Cài đặt',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 13, right: 13),
                          child: Icon(
                            Icons.question_mark_outlined,
                            size: 25,
                          )),
                      Text(
                        'Trợ giúp, phản hồi',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Divider(color: Color.fromRGBO(124, 124, 124, 1), thickness: 0.4),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: FaIcon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                          size: 25,
                        ),
                      ),
                      Text(
                        'YouTube Musics',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.squareYoutube,
                          color: Colors.red,
                          size: 25,
                        ),
                      ),
                      Text(
                        'YouTube Kids',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 26),
              child: Text('Chính sách quyền riêng tư - Điều khoảng dịch vụ'),
            )
          ],
        ),
      ),
    );
  }
}
