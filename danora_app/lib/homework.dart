import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './homework_inside.dart';
import 'package:adobe_xd/page_link.dart';

class homework extends StatelessWidget {
  homework({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8e8ed),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(14.0, 406.0),
            child: SizedBox(
              width: 385.0,
              height: 62.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 385.0, 62.0),
                    size: Size(385.0, 62.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: const Color(0xffe8e8ed),
                        border: Border.all(
                            width: 1.0, color: const Color(0x1a707070)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x33000000),
                            offset: Offset(1, 1),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.0, 23.0, 94.0, 20.0),
                    size: Size(385.0, 62.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'App제작 중급',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: const Color(0xff304f94),
                        fontWeight: FontWeight.w700,
                        height: 2,
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
          Transform.translate(
            offset: Offset(14.0, 327.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => homework_inside(),
                ),
              ],
              child: SizedBox(
                width: 385.0,
                height: 62.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 385.0, 62.0),
                      size: Size(385.0, 62.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: const Color(0xffe8e8ed),
                          border: Border.all(
                              width: 1.0, color: const Color(0x1a707070)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x33000000),
                              offset: Offset(1, 1),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(34.0, 21.0, 54.0, 20.0),
                      size: Size(385.0, 62.0),
                      pinLeft: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Git 기초',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: const Color(0xff304f94),
                          fontWeight: FontWeight.w700,
                          height: 2,
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
          Transform.translate(
            offset: Offset(14.0, 251.0),
            child: SizedBox(
              width: 385.0,
              height: 62.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 385.0, 62.0),
                    size: Size(385.0, 62.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: const Color(0xffe8e8ed),
                        border: Border.all(
                            width: 1.0, color: const Color(0x1a707070)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x33000000),
                            offset: Offset(1, 1),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(28.0, 21.0, 80.0, 20.0),
                    size: Size(385.0, 62.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '딥러닝 심화',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 15,
                        color: const Color(0xff304f94),
                        fontWeight: FontWeight.w700,
                        height: 2,
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
          Transform.translate(
            offset: Offset(230.3, 272.0),
            child: SizedBox(
              width: 53.0,
              child: Text(
                '한태민',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff304f94),
                  fontWeight: FontWeight.w700,
                  height: 2,
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(229.3, 348.0),
            child: SizedBox(
              width: 53.0,
              child: Text(
                '이진성',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff304f94),
                  fontWeight: FontWeight.w700,
                  height: 2,
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(229.3, 427.0),
            child: SizedBox(
              width: 53.0,
              child: Text(
                '김민진',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xff304f94),
                  fontWeight: FontWeight.w700,
                  height: 2,
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(361.3, 275.0),
            child: SizedBox(
              width: 16.0,
              child: Text(
                '1',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 15,
                  color: const Color(0xffe8e8ed),
                  fontWeight: FontWeight.w700,
                  height: 2,
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 412.0,
            height: 136.0,
            decoration: BoxDecoration(
              color: const Color(0xff304f94),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Transform.translate(
            offset: Offset(50.0, 68.0),
            child: SizedBox(
              width: 313.0,
              height: 153.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 313.0, 153.0),
                    size: Size(313.0, 153.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffffffff)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x66000000),
                            offset: Offset(0, 3),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(98.0, 24.0, 118.0, 27.0),
                    size: Size(313.0, 153.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '남은 과제는?',
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
                    bounds: Rect.fromLTWH(143.0, 77.0, 22.0, 44.0),
                    size: Size(313.0, 153.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 40,
                        color: const Color(0xff304f94),
                        fontWeight: FontWeight.w700,
                        height: 0.75,
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
        ],
      ),
    );
  }
}
