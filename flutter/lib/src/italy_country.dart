import 'package:plate_core/plate_core.dart';

import 'italy_colors.dart';

/// Italy as a `PlateCountry`: the EU band, whose stars are `EuropeanStars.band`.
/// The `I` beneath them is a [PlateLabel] on
/// the spec, so [captionLines] is empty.
abstract final class ItalyCountry {
  static const PlateCountry italy = PlateCountry.euroband(
    code: 'it',
    panelColor: ItalyColors.euroBlue,
  );
}
