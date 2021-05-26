import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './testhomeworkinside.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class testhomework extends StatelessWidget {
  testhomework({
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
                  pageBuilder: () => testhomeworkinside(),
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
            offset: Offset(352.0, 344.0),
            child: SvgPicture.string(
              _svg_t2tizq,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(359.3, 350.0),
            child: SizedBox(
              width: 16.0,
              child: Text(
                '2',
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
            offset: Offset(355.0, 268.0),
            child: SvgPicture.string(
              _svg_q2rcyg,
              allowDrawingOutsideViewBox: true,
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
          Transform.translate(
            offset: Offset(351.0, 423.0),
            child: SvgPicture.string(
              _svg_iewj6y,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(358.3, 429.0),
            child: SizedBox(
              width: 16.0,
              child: Text(
                '0',
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
          Transform.translate(
            offset: Offset(18.0, 20.0),
            child:
                // Adobe XD layer: 'Icon feather-menu' (group)
                SizedBox(
              width: 27.0,
              height: 18.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 9.0, 27.0, 1.0),
                    size: Size(27.0, 18.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_2s28pw,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 27.0, 1.0),
                    size: Size(27.0, 18.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_i19oe,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 18.0, 27.0, 1.0),
                    size: Size(27.0, 18.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_h8s906,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
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

const String _svg_t2tizq =
    '<svg viewBox="352.0 344.0 29.0 28.0" ><path transform="translate(352.0, 344.0)" d="M 14.5 0 C 22.50812911987305 0 29 6.268014430999756 29 14 C 29 21.73198509216309 22.50812911987305 28 14.5 28 C 6.49187183380127 28 0 21.73198509216309 0 14 C 0 6.268014430999756 6.49187183380127 0 14.5 0 Z" fill="#304f94" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q2rcyg =
    '<svg viewBox="355.0 268.0 29.0 28.0" ><path transform="translate(355.0, 268.0)" d="M 14.5 0 C 22.50812911987305 0 29 6.268014430999756 29 14 C 29 21.73198509216309 22.50812911987305 28 14.5 28 C 6.49187183380127 28 0 21.73198509216309 0 14 C 0 6.268014430999756 6.49187183380127 0 14.5 0 Z" fill="#304f94" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iewj6y =
    '<svg viewBox="351.0 423.0 29.0 28.0" ><path transform="translate(351.0, 423.0)" d="M 14.5 0 C 22.50812911987305 0 29 6.268014430999756 29 14 C 29 21.73198509216309 22.50812911987305 28 14.5 28 C 6.49187183380127 28 0 21.73198509216309 0 14 C 0 6.268014430999756 6.49187183380127 0 14.5 0 Z" fill="#304f94" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2s28pw =
    '<svg viewBox="4.5 18.0 27.0 1.0" ><path  d="M 4.5 18 L 31.5 18" fill="none" stroke="#e8e8ed" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_i19oe =
    '<svg viewBox="4.5 9.0 27.0 1.0" ><path  d="M 4.5 9 L 31.5 9" fill="none" stroke="#e8e8ed" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_h8s906 =
    '<svg viewBox="4.5 27.0 27.0 1.0" ><path  d="M 4.5 27 L 31.5 27" fill="none" stroke="#e8e8ed" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
