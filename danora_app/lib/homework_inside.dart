import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class homework_inside extends StatelessWidget {
  homework_inside({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8e8ed),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(15.0, 13.0),
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
          Transform.translate(
            offset: Offset(13.3, 245.5),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  //pageBuilder: () => testmaintimer(),
                ),
              ],
              child: SizedBox(
                width: 386.0,
                height: 139.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 385.5, 139.0),
                      size: Size(385.5, 139.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 385.0, 139.0),
                            size: Size(385.5, 139.0),
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
                            bounds: Rect.fromLTWH(15.0, 10.0, 66.0, 20.0),
                            size: Size(385.5, 139.0),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Text(
                              '과제명 - 1',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 15,
                                color: const Color(0xff304f94),
                                fontWeight: FontWeight.w700,
                                height: 2,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.5, 37.5, 385.0, 1.0),
                            size: Size(385.5, 139.0),
                            pinLeft: true,
                            pinRight: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_svfujp,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(150.8, 57.5, 84.0, 33.0),
                      size: Size(385.5, 139.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'D-day',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 30,
                          color: const Color(0xfff92c2c),
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                        textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(106.8, 110.5, 172.0, 22.0),
                      size: Size(385.5, 139.0),
                      pinBottom: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '2021-04-09 (23:59)',
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
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(13.3, 408.5),
            child: SizedBox(
              width: 386.0,
              height: 139.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 385.5, 139.0),
                    size: Size(385.5, 139.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 385.0, 139.0),
                          size: Size(385.5, 139.0),
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
                          bounds: Rect.fromLTWH(14.0, 10.0, 66.0, 20.0),
                          size: Size(385.5, 139.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '과제명 - 2',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: const Color(0xff304f94),
                              fontWeight: FontWeight.w700,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.5, 37.5, 385.0, 1.0),
                          size: Size(385.5, 139.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_svfujp,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(168.8, 57.5, 48.0, 33.0),
                    size: Size(385.5, 139.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'D-3',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 30,
                        color: const Color(0xff304f94),
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                      textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(106.8, 110.5, 172.0, 22.0),
                    size: Size(385.5, 139.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '2021-04-09 (23:59)',
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
                ],
              ),
            ),
          ),
          SvgPicture.string(
            _svg_3ghxqt,
            allowDrawingOutsideViewBox: true,
          ),
          Transform.translate(
            offset: Offset(13.3, 571.5),
            child: SizedBox(
              width: 386.0,
              height: 139.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 385.5, 139.0),
                    size: Size(385.5, 139.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 385.0, 139.0),
                          size: Size(385.5, 139.0),
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
                          bounds: Rect.fromLTWH(14.0, 10.0, 66.0, 20.0),
                          size: Size(385.5, 139.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '과제명 - 3',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: const Color(0xff304f94),
                              fontWeight: FontWeight.w700,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.5, 37.5, 385.0, 1.0),
                          size: Size(385.5, 139.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_svfujp,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(128.8, 51.5, 128.0, 40.0),
                    size: Size(385.5, 139.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '제출 완료',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 30,
                        color: const Color(0xff15740a),
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                      textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(106.8, 110.5, 172.0, 22.0),
                    size: Size(385.5, 139.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '2021-04-09 (23:59)',
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(50.0, 60.0),
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
                    bounds: Rect.fromLTWH(99.0, 57.0, 110.0, 40.0),
                    size: Size(313.0, 153.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Git 기초',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 30,
                        color: const Color(0xff304f94),
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                      textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(124.0, 111.0, 60.0, 27.0),
                    size: Size(313.0, 153.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '이진성',
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(161.0, 80.0),
            child: SizedBox(
              width: 90.0,
              child: Text(
                '교양대학',
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
          ),
        ],
      ),
    );
  }
}

const String _svg_2s28pw =
    '<svg viewBox="4.5 18.0 27.0 1.0" ><path  d="M 4.5 18 L 31.5 18" fill="none" stroke="#e8e8ed" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_i19oe =
    '<svg viewBox="4.5 9.0 27.0 1.0" ><path  d="M 4.5 9 L 31.5 9" fill="none" stroke="#e8e8ed" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_h8s906 =
    '<svg viewBox="4.5 27.0 27.0 1.0" ><path  d="M 4.5 27 L 31.5 27" fill="none" stroke="#e8e8ed" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_svfujp =
    '<svg viewBox="0.5 471.9 385.0 1.0" ><path transform="translate(0.5, 471.86)" d="M 0 0 L 385 1" fill="none" fill-opacity="0.23" stroke="#707070" stroke-width="1" stroke-opacity="0.23" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3ghxqt =
    '<svg viewBox="0.0 0.0 412.0 136.2" ><path  d="M 0 0 L 412 0 L 412 136.19140625 L 0 136.19140625 L 0 0 Z" fill="#304f94" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
