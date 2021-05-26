import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './testmaintimer2.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class testmaintimer extends StatelessWidget {
  testmaintimer({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8e8ed),
      body: Stack(
        children: <Widget>[
          Container(
            width: 412.0,
            height: 205.0,
            decoration: BoxDecoration(
              color: const Color(0xff304f94),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Transform.translate(
            offset: Offset(382.7, 403.3),
            child:
                // Adobe XD layer: 'Icon feather-settin…' (group)
                SizedBox(
              width: 19.0,
              height: 19.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.8, 6.8, 5.1, 5.1),
                    size: Size(18.7, 18.7),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_eybccs,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 18.7, 18.7),
                    size: Size(18.7, 18.7),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_f0u1nc,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
            offset: Offset(15.0, 593.0),
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
                    bounds: Rect.fromLTWH(304.0, 19.0, 61.0, 28.0),
                    size: Size(385.0, 62.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 61.0, 28.0),
                          size: Size(61.0, 28.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              color: const Color(0xff304f94),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.0, 4.0, 30.0, 20.0),
                          size: Size(61.0, 28.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            '시작',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: const Color(0xffe8e8ed),
                              fontWeight: FontWeight.w700,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(23.0, 23.0, 100.0, 20.0),
                    size: Size(385.0, 62.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '내 목표/공부_1',
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(180.0, 22.0, 80.0, 22.0),
                    size: Size(385.0, 62.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '00:00:00',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        color: const Color(0x80304f94),
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
            offset: Offset(13.0, 435.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => testmaintimer2(),
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
                      bounds: Rect.fromLTWH(304.0, 19.0, 61.0, 28.0),
                      size: Size(385.0, 62.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 61.0, 28.0),
                            size: Size(61.0, 28.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.0),
                                color: const Color(0xff304f94),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xff707070)),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(16.0, 4.0, 30.0, 20.0),
                            size: Size(61.0, 28.0),
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: Text(
                              '시작',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 15,
                                color: const Color(0xffe8e8ed),
                                fontWeight: FontWeight.w700,
                                height: 2,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(23.0, 23.0, 100.0, 20.0),
                      size: Size(385.0, 62.0),
                      pinLeft: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '내 목표/공부_1',
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
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(180.0, 22.0, 80.0, 22.0),
                      size: Size(385.0, 62.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        '00:00:00',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 20,
                          color: const Color(0x80304f94),
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
            offset: Offset(15.0, 514.0),
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
                    bounds: Rect.fromLTWH(304.0, 19.0, 61.0, 28.0),
                    size: Size(385.0, 62.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 61.0, 28.0),
                          size: Size(61.0, 28.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13.0),
                              color: const Color(0xff304f94),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.0, 4.0, 30.0, 20.0),
                          size: Size(61.0, 28.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            '시작',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 15,
                              color: const Color(0xffe8e8ed),
                              fontWeight: FontWeight.w700,
                              height: 2,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(23.0, 23.0, 100.0, 20.0),
                    size: Size(385.0, 62.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '내 목표/공부_2',
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(180.0, 22.0, 80.0, 22.0),
                    size: Size(385.0, 62.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '00:00:00',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        color: const Color(0x80304f94),
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
            offset: Offset(50.0, 127.0),
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
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(77.0, 55.0, 160.0, 44.0),
                    size: Size(313.0, 153.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '00:00:00',
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

const String _svg_eybccs =
    '<svg viewBox="5.3 31.3 5.1 5.1" ><path transform="translate(-8.21, 17.79)" d="M 18.59499359130859 16.0474967956543 C 18.59499359130859 17.45443916320801 17.45443916320801 18.59499359130859 16.0474967956543 18.59499359130859 C 14.64055347442627 18.59499359130859 13.5 17.45443916320801 13.5 16.0474967956543 C 13.5 14.64055347442627 14.64055347442627 13.5 16.0474967956543 13.5 C 17.45443916320801 13.5 18.59499359130859 14.64055347442627 18.59499359130859 16.0474967956543 Z" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_f0u1nc =
    '<svg viewBox="-1.5 24.5 18.7 18.7" ><path transform="translate(-3.0, 23.0)" d="M 17.1246452331543 13.38831615447998 C 16.89337730407715 13.91232776641846 17.00434684753418 14.52434158325195 17.40486907958984 14.93379783630371 L 17.45582008361816 14.9847469329834 C 17.77472877502441 15.30330181121826 17.95391845703125 15.73556518554688 17.95391845703125 16.18631744384766 C 17.95391845703125 16.63706970214844 17.77472877502441 17.06933212280273 17.4558219909668 17.38788604736328 C 17.13726806640625 17.7067928314209 16.70500564575195 17.88598251342773 16.25425148010254 17.88598251342773 C 15.80350112915039 17.88598251342773 15.37123775482178 17.7067928314209 15.05268383026123 17.38788604736328 L 15.00173187255859 17.33693504333496 C 14.59227657318115 16.9364128112793 13.98026275634766 16.82544326782227 13.4562520980835 17.05670928955078 C 12.94295787811279 17.27670288085938 12.60931396484375 17.78050231933594 12.60708522796631 18.33894920349121 L 12.60708522796631 18.48331069946289 C 12.60708522796631 19.4212703704834 11.84671688079834 20.181640625 10.90875434875488 20.181640625 C 9.970791816711426 20.181640625 9.210423469543457 19.4212703704834 9.210423469543457 18.48331069946289 L 9.210423469543457 18.40688514709473 C 9.196969985961914 17.83172035217285 8.833284378051758 17.3232364654541 8.29332447052002 17.12464714050293 C 7.769313335418701 16.89337730407715 7.157299041748047 17.00434684753418 6.747842788696289 17.40487098693848 L 6.696892738342285 17.45582008361816 C 6.378340244293213 17.77472877502441 5.946076393127441 17.95391845703125 5.49532413482666 17.95391845703125 C 5.044571399688721 17.95391845703125 4.612308025360107 17.77472877502441 4.293755054473877 17.45582008361816 C 3.974847793579102 17.13726806640625 3.795657873153687 16.70500564575195 3.795657873153687 16.25425148010254 C 3.795657873153687 15.80350017547607 3.974847793579102 15.37123680114746 4.293754577636719 15.05268287658691 L 4.344704627990723 15.00173187255859 C 4.745226383209229 14.59227657318115 4.856196403503418 13.98026275634766 4.624928951263428 13.4562520980835 C 4.404937744140625 12.94295692443848 3.901137351989746 12.60931396484375 3.342689514160156 12.60708618164063 L 3.198330879211426 12.60708522796631 C 2.260368585586548 12.60708522796631 1.5 11.84671688079834 1.5 10.90875434875488 C 1.5 9.970791816711426 2.260369062423706 9.210423469543457 3.198331356048584 9.210423469543457 L 3.274755954742432 9.210423469543457 C 3.849921226501465 9.196969985961914 4.358406066894531 8.833284378051758 4.556995868682861 8.29332447052002 C 4.788262844085693 7.769312381744385 4.677293300628662 7.157299041748047 4.276771068572998 6.747842788696289 L 4.225821018218994 6.696892738342285 C 3.906914234161377 6.378340244293213 3.727723598480225 5.946077346801758 3.727723598480225 5.495324611663818 C 3.727723598480225 5.044571399688721 3.906913995742798 4.612307548522949 4.225821495056152 4.293754577636719 C 4.544374465942383 3.974847316741943 4.976637840270996 3.795657157897949 5.427391052246094 3.795657396316528 C 5.878142833709717 3.795657396316528 6.310406684875488 3.974847316741943 6.628959178924561 4.293754577636719 L 6.679909229278564 4.344704627990723 C 7.08936595916748 4.745226860046387 7.70137882232666 4.856196403503418 8.22538948059082 4.624928951263428 L 8.293323516845703 4.624928951263428 C 8.806619644165039 4.404937267303467 9.140261650085449 3.901136875152588 9.142488479614258 3.342689514160156 L 9.142488479614258 3.198330879211426 C 9.142488479614258 2.260368585586548 9.902856826782227 1.499999761581421 10.84081935882568 1.5 C 11.77878189086914 1.5 12.53915023803711 2.260368585586548 12.53915023803711 3.198330879211426 L 12.53915023803711 3.274755954742432 C 12.54137802124023 3.83320426940918 12.87502193450928 4.337004661560059 13.3883171081543 4.55699634552002 C 13.91232872009277 4.788263320922852 14.52434158325195 4.67729377746582 14.93379783630371 4.276771545410156 L 14.9847469329834 4.225821495056152 C 15.30330181121826 3.906914472579956 15.73556518554688 3.72772479057312 16.18631744384766 3.72772479057312 C 16.63706970214844 3.72772479057312 17.06933212280273 3.906914710998535 17.38788604736328 4.225821495056152 C 17.7067928314209 4.544374942779541 17.88598251342773 4.976638317108154 17.88598251342773 5.427391052246094 C 17.88598251342773 5.878143310546875 17.7067928314209 6.310406684875488 17.38788604736328 6.628959655761719 L 17.33693504333496 6.679909706115723 C 16.9364128112793 7.089365482330322 16.82544326782227 7.70137882232666 17.05670928955078 8.225391387939453 L 17.05671119689941 8.293323516845703 C 17.27670288085938 8.806619644165039 17.78050231933594 9.140261650085449 18.33894920349121 9.142488479614258 L 18.48331069946289 9.142488479614258 C 19.4212703704834 9.142488479614258 20.181640625 9.902856826782227 20.181640625 10.84081935882568 C 20.181640625 11.77878189086914 19.4212703704834 12.53915023803711 18.48331069946289 12.53915023803711 L 18.40688514709473 12.53915023803711 C 17.84843826293945 12.54137897491455 17.34463882446289 12.87502193450928 17.12464714050293 13.3883171081543 Z" fill="none" stroke="#000000" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_2s28pw =
    '<svg viewBox="4.5 18.0 27.0 1.0" ><path  d="M 4.5 18 L 31.5 18" fill="none" stroke="#e8e8ed" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_i19oe =
    '<svg viewBox="4.5 9.0 27.0 1.0" ><path  d="M 4.5 9 L 31.5 9" fill="none" stroke="#e8e8ed" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_h8s906 =
    '<svg viewBox="4.5 27.0 27.0 1.0" ><path  d="M 4.5 27 L 31.5 27" fill="none" stroke="#e8e8ed" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
