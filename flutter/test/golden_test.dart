import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:italy_plate/italy_plate.dart';
import 'package:plate_core/plate_core.dart';
import 'package:plate_core/testing.dart';

/// One golden per category, drawn with real bold faces so the ink can be
/// measured against the references (`platekit golden-check`).
///
/// Regenerate with `flutter test --update-goldens` after a deliberate change.
void main() {
  setUpAll(() async {
    final FontLoader loader = FontLoader('Roboto');
    for (final String path in const <String>[
      '/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf',
    ]) {
      final File face = File(path);
      if (!face.existsSync()) continue;
      loader.addFont(face.readAsBytes().then((b) => ByteData.view(b.buffer)));
    }
    await loader.load();
  });

  /// category id -> (spec, theme, space-separated sample value)
  final Map<String, (PlateSpec, PlateTheme, String)>
  cases = <String, (PlateSpec, PlateTheme, String)>{
    'private': (ItalyPlates.private, ItalyThemes.private, 'CZ 889 KF'),
    'twoline': (ItalyPlates.twoLine, ItalyThemes.twoLine, 'ZA 198 SG'),
    'motorcycle': (ItalyPlates.motorcycle, ItalyThemes.motorcycle, 'BB 03813'),
    'diplomatic': (ItalyPlates.diplomatic, ItalyThemes.diplomatic, '0213 XG'),
    'consular': (ItalyPlates.consular, ItalyThemes.diplomatic, '0213 AF'),
    'unp': (
      ItalyPlates.unitedNationsSpecialists,
      ItalyThemes.diplomatic,
      '147 AA',
    ),
  };

  for (final MapEntry<String, (PlateSpec, PlateTheme, String)> c
      in cases.entries) {
    testWidgets(c.key, (tester) async {
      final (PlateSpec spec, PlateTheme theme, String values) = c.value;
      final PlateController controller = PlateController.fromValues(
        spec,
        values.split(' '),
      );
      await pumpPlateGolden(
        tester,
        controller,
        'goldens/it_${c.key}.png',
        theme: theme,
        country: ItalyCountry.italy,
      );
    });
  }
}
