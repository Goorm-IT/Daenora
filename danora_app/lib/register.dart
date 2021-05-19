import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './login.dart';
import 'package:adobe_xd/page_link.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: register(),
    );
  }
}

class register extends StatelessWidget {
  register({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8e8ed),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(43.0, 170.0),
            child:
            // Adobe XD layer: 'Account Signup' (group)
            SizedBox(
              width: 327.0,
              height: 543.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 439.0),
                    size: Size(327.0, 543.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'Rectangle 84' (shape)
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffe8e8ed),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(124.0, 44.0, 80.0, 27.0),
                    size: Size(327.0, 543.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'Create an Account' (text)
                    Text(
                      '회원가입',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        color: const Color(0xff304f94),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                      textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(72.0, 510.0, 182.0, 33.0),
                    size: Size(327.0, 543.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'By creating an acco…' (text)
                    Text(
                      '너의 비밀번호는 이 너굴맨이 처리했으니\n안심하라구~',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xff2699fb),
                        height: 2,
                      ),
                      textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(24.0, 101.0, 279.0, 304.0),
                    size: Size(327.0, 543.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 279.0, 48.0),
                          size: Size(279.0, 304.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                          // Adobe XD layer: 'Input' (group)
                          Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 279.0, 48.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                // Adobe XD layer: 'Rectangle 85' (shape)
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff304f94)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 14.0, 42.0, 18.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                // Adobe XD layer: 'Full Name' (text)
                                Text(
                                  '아이디',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    color: const Color(0xffbce0fd),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 64.0, 279.0, 48.0),
                          size: Size(279.0, 304.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                          // Adobe XD layer: 'Input' (group)
                          Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 279.0, 48.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                // Adobe XD layer: 'Rectangle 85' (shape)
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff304f94)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 14.0, 56.0, 18.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                // Adobe XD layer: 'Email' (text)
                                Text(
                                  '비밀번호',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    color: const Color(0xffbce0fd),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 128.0, 279.0, 48.0),
                          size: Size(279.0, 304.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                          // Adobe XD layer: 'Input' (group)
                          Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 279.0, 48.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                // Adobe XD layer: 'Rectangle 85' (shape)
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff304f94)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 14.0, 42.0, 18.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                // Adobe XD layer: 'Password' (text)
                                Text(
                                  '닉네임',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    color: const Color(0xffbce0fd),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 192.0, 279.0, 48.0),
                          size: Size(279.0, 304.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                          // Adobe XD layer: 'Input' (group)
                          Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 279.0, 48.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                // Adobe XD layer: 'Rectangle 85' (shape)
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff304f94)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 15.0, 28.0, 18.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                // Adobe XD layer: 'Full Name' (text)
                                Text(
                                  '학번',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    color: const Color(0xffbce0fd),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 256.0, 279.0, 48.0),
                          size: Size(279.0, 304.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                          // Adobe XD layer: 'Input' (group)
                          Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 279.0, 48.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                // Adobe XD layer: 'Rectangle 85' (shape)
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff304f94)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(20.0, 15.0, 93.0, 18.0),
                                size: Size(279.0, 48.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                // Adobe XD layer: 'Full Name' (text)
                                Text(
                                  '비밀번호(학교)',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    color: const Color(0xffbce0fd),
                                  ),
                                  textAlign: TextAlign.left,
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
          Transform.translate(
            offset: Offset(43.0, 762.0),
            child:
            // Adobe XD layer: 'Continue' (group)
            PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => login(),
                ),
              ],
              child: SizedBox(
                width: 327.0,
                height: 48.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 48.0),
                      size: Size(327.0, 48.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                      // Adobe XD layer: 'Rectangle 119' (shape)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: const Color(0xff304f94),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(143.0, 17.0, 42.0, 13.0),
                      size: Size(327.0, 48.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                      // Adobe XD layer: 'CONTINUE' (text)
                      Text(
                        '가입 완료',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 10,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
