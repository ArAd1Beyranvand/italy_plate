/// Italy's licence plates for the `plate_core` library.
///
/// The EU-band car plate, the two-line plate, the motorcycle plate and the
/// diplomatic, consular and United Nations plates, black
/// on white, with an advisory validator.
library;

// TODO(py): [D5] one module `plates.countries.italy`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/italy`; tree-shakable.
// TODO(kt): [D5] package `countries.italy` in the countries module.
export 'package:plate_alphabet/plate_alphabet.dart' show ItalyAlphabets;

export 'src/italy_colors.dart';
export 'src/italy_country.dart';
export 'src/italy_missions.dart';
export 'src/italy_plates.dart';
export 'src/italy_themes.dart';
export 'src/italy_validators.dart';
