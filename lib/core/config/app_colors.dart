import 'dart:ui';

class Fonts {
  static const String main = 'Concert';
  static const String regular = 'SFR';
  static const String medium = 'SFM';
  static const String bold = 'SFB';
  static const String extra = 'SFE';
}

List<Color> getGameColors(int id) {
  if (id == 1) {
    return [
      const Color(0xffE6E6E6),
      const Color(0xff723B72),
      const Color(0xff070707),
      const Color(0xffAB74AB),
      const Color(0xff73AD3C),
      const Color(0xff73AD73),
      const Color(0xffE5ADAC),
      const Color(0xffAB3A3B),
    ];
  }

  if (id == 2) {
    return [
      const Color(0xffDB4546),
      const Color(0xff432D4A),
      const Color(0xff6C5462),
      const Color(0xff98182D),
      const Color(0xff86C3D2),
      const Color(0xffEDC652),
      const Color(0xff5C85AE),
      const Color(0xff4D6F9A),
      const Color(0xffA4867E),
      const Color(0xff435894),
      const Color(0xff9C9083),
      const Color(0xffFEFEFE),
    ];
  }

  if (id == 3) {
    return [
      const Color(0xffD9D9D9),
      const Color(0xffDD875C),
      const Color(0xff879C48),
      const Color(0xff161616),
      const Color(0xff2E432D),
      const Color(0xff46832F),
    ];
  }

  if (id == 4) {
    return [
      const Color(0xff17172C),
      const Color(0xff172C2C),
      const Color(0xff4F5B05),
      const Color(0xff6FAE09),
      const Color(0xffAF8446),
      const Color(0xff57432D),
      const Color(0xff034203),
      const Color(0xff010017),
      const Color(0xffC6B048),
      const Color(0xffEFEF5F),
      const Color(0xffC4EE0A),
      const Color(0xffFDFDFD)
    ];
  }

  if (id == 5) {
    return [
      const Color(0xffF3F3F3),
      const Color(0xffD82E44),
      const Color(0xffEF705B),
      const Color(0xffEFB187),
      const Color(0xffC8C8B2),
      const Color(0xff535F46),
      const Color(0xff2D1A1B),
      const Color(0xff999B6E),
    ];
  }

  if (id == 6) {
    return [
      const Color(0xffF5F5F5),
      const Color(0xff2D172D),
      const Color(0xff3B5830),
      const Color(0xff2D2D2C),
      const Color(0xff466F2F),
      const Color(0xff2E432D),
      const Color(0xff5B852F),
      const Color(0xff85B047),
      const Color(0xffF2DE4A),
    ];
  }

  if (id == 7) {
    return [
      const Color(0xffC79BB2),
      const Color(0xff584498),
      const Color(0xff309BC7),
      const Color(0xffDEC8C8),
      const Color(0xff2E70C6),
      const Color(0xff1CDBDB),
      const Color(0xff879BB0),
      const Color(0xffDB9C47),
      const Color(0xff7070A0),
      const Color(0xff972D2D),
    ];
  }

  if (id == 8) {
    return [
      const Color(0xffDDDC9D),
      const Color(0xff2E4342),
      const Color(0xff9A9B47),
      const Color(0xff5A845A),
      const Color(0xff677345),
      const Color(0xffE56751),
    ];
  }

  if (id == 9) {
    return [
      const Color(0xff45596E),
      const Color(0xff2D4259),
      const Color(0xff994443),
      const Color(0xffC77A46),
      const Color(0xff461A2E),
      const Color(0xffEEB05C),
      const Color(0xff17172C),
      const Color(0xff3B364C),
    ];
  }

  return [
    const Color(0xff2E204D),
    const Color(0xffDB4546),
    const Color(0xff432D4A),
    const Color(0xff6C5462),
    const Color(0xff98182D),
    const Color(0xff86C3D2),
    const Color(0xffEDC652),
    const Color(0xff5C85AE),
    const Color(0xff4D6F9A),
    const Color(0xffA4867E),
    const Color(0xff435894),
    const Color(0xff9C9083),
    const Color(0xffFEFEFE),
  ];
}
