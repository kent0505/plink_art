import 'dart:ui';

class Fonts {
  static const String main = 'Concert';
  static const String regular = 'SFR';
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
  } else if (id == 2) {
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
  } else if (id == 3) {
    return [
      const Color(0xffD9D9D9),
      const Color(0xffDD875C),
      const Color(0xff879C48),
      const Color(0xff161616),
      const Color(0xff2E432D),
      const Color(0xff46832F),
    ];
  } else if (id == 4) {
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
  } else if (id == 5) {
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
  } else if (id == 6) {
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
  } else if (id == 7) {
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
  } else if (id == 8) {
    return [
      const Color(0xffDDDC9D),
      const Color(0xff2E4342),
      const Color(0xff9A9B47),
      const Color(0xff5A845A),
      const Color(0xff677345),
      const Color(0xffE56751),
    ];
  } else if (id == 9) {
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
  } else {
    return [
      const Color(0xff2E204D),
      const Color(0xffDB4546),
      const Color(0xff432D4A),
      const Color(0xff6C5462),
      const Color(0xff98182D),
      const Color(0xff86C3D2),
      const Color(0xffEDC652),
      const Color(0xff5C85AE),
      const Color(0xffA4867E),
      const Color(0xff435894),
      const Color(0xffFEFEFE),
    ];
  }
}

List<Color> getPickerColors(int id) {
  if (id == 1) {
    return [
      const Color(0xffFEFFFE),
      const Color(0xffEBEBEB),
      const Color(0xffD6D6D6),
      const Color(0xffC2C2C2),
      const Color(0xffADADAD),
      const Color(0xff999999),
      const Color(0xff858585),
      const Color(0xff707070),
      const Color(0xff5C5C5C),
      const Color(0xff474747),
      const Color(0xff333333),
      const Color(0xff000000),
    ];
  } else if (id == 2) {
    return [
      const Color(0xff00374A),
      const Color(0xff011D57),
      const Color(0xff11053B),
      const Color(0xff2E063D),
      const Color(0xff3C071B),
      const Color(0xff5C0701),
      const Color(0xff583300),
      const Color(0xff563D00),
      const Color(0xff666100),
      const Color(0xff4F5504),
      const Color(0xff263E0F),
      const Color(0xff263E0F),
    ];
  } else if (id == 3) {
    return [
      const Color(0xff004D65),
      const Color(0xff012F7B),
      const Color(0xff1A0A52),
      const Color(0xff450D59),
      const Color(0xff551029),
      const Color(0xff831100),
      const Color(0xff7B2900),
      const Color(0xff7A4A00),
      const Color(0xff785800),
      const Color(0xff8D8602),
      const Color(0xff6F760A),
      const Color(0xff38571A),
    ];
  } else if (id == 4) {
    return [
      const Color(0xff016E8F),
      const Color(0xff0042A9),
      const Color(0xff2C0977),
      const Color(0xff61187C),
      const Color(0xff791A3D),
      const Color(0xffB51A00),
      const Color(0xffAD3E00),
      const Color(0xffA96800),
      const Color(0xffA67B01),
      const Color(0xffC4BC00),
      const Color(0xff9BA50E),
      const Color(0xff4E7A27),
    ];
  } else if (id == 5) {
    return [
      const Color(0xff008CB4),
      const Color(0xff0056D6),
      const Color(0xff371A94),
      const Color(0xff7A219E),
      const Color(0xff99244F),
      const Color(0xffE22400),
      const Color(0xffDA5100),
      const Color(0xffD38301),
      const Color(0xffD19D01),
      const Color(0xffF5EC00),
      const Color(0xffC3D117),
      const Color(0xff669D34),
    ];
  } else if (id == 6) {
    return [
      const Color(0xff00A1D8),
      const Color(0xff0061FD),
      const Color(0xff4D22B2),
      const Color(0xff982ABC),
      const Color(0xffB92D5D),
      const Color(0xffFF4015),
      const Color(0xffFF6A00),
      const Color(0xffFFAB01),
      const Color(0xffFCC700),
      const Color(0xffFEFB41),
      const Color(0xffD9EC37),
      const Color(0xff76BB40),
    ];
  } else if (id == 7) {
    return [
      const Color(0xff01C7FC),
      const Color(0xff3A87FD),
      const Color(0xff5E30EB),
      const Color(0xffBE38F3),
      const Color(0xffE63B7A),
      const Color(0xffFE6250),
      const Color(0xffFE8648),
      const Color(0xffFEB43F),
      const Color(0xffFECB3E),
      const Color(0xffFFF76B),
      const Color(0xffE4EF65),
      const Color(0xff96D35F),
    ];
  } else if (id == 8) {
    return [
      const Color(0xff52D6FC),
      const Color(0xff74A7FF),
      const Color(0xff864FFD),
      const Color(0xffD357FE),
      const Color(0xffEE719E),
      const Color(0xffFF8C82),
      const Color(0xffFEA57D),
      const Color(0xffFEC777),
      const Color(0xffFED977),
      const Color(0xffFFF994),
      const Color(0xffEAF28F),
      const Color(0xffB1DD8B),
    ];
  } else if (id == 9) {
    return [
      const Color(0xff93E3FC),
      const Color(0xffA7C6FF),
      const Color(0xffB18CFE),
      const Color(0xffE292FE),
      const Color(0xffF4A4C0),
      const Color(0xffFFB5AF),
      const Color(0xffFFC5AB),
      const Color(0xffFED9A8),
      const Color(0xffFDE4A8),
      const Color(0xffFFFBB9),
      const Color(0xffF1F7B7),
      const Color(0xffCDE8B5),
    ];
  } else {
    return [
      const Color(0xffCBF0FF),
      const Color(0xffD2E2FE),
      const Color(0xffD8C9FE),
      const Color(0xffEFCAFE),
      const Color(0xffF9D3E0),
      const Color(0xffFFDAD8),
      const Color(0xffFFE2D6),
      const Color(0xffFEECD4),
      const Color(0xffFEF1D5),
      const Color(0xffFDFBDD),
      const Color(0xffF6FADB),
      const Color(0xffDEEED4),
    ];
  }
}
