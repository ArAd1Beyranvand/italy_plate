FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the creative people of Italy to view examples:

https://platexample.ir/#/discover/italy

# italy_plate

Italy's licence plates for the `plate_core` library. The EU-band car plate, the two-line plate, the motorcycle plate and the diplomatic, consular and United Nations plates, black on white, with an advisory validator.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  italy_plate: ^0.1.0
```

## Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:italy_plate/italy_plate.dart';

PlateCanvas(
  spec: ItalyPlates.private,
  theme: ItalyThemes.private,
  validator: const ItalyValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Contains

- `ItalyCountry` — country panel: `italy`.
- `ItalyPlates` — 8 plate specs: `private`, `twoLine`, `motorcycle`, `diplomatic`, `consular`, `unitedNations`, `unitedNationsSpecialists`, `unitedNationsTransit`.
- `ItalyThemes` — 4 themes: `private`, `twoLine`, `motorcycle`, `diplomatic`.
- `ItalyValidator` — advisory validator; flags the frame, never blocks a keystroke.
- `ItalyDiplomaticValidator` — advisory validator; flags the frame, never blocks a keystroke.
- `ItalyMissions` — code table.

## Plates

Groups `prefix`, `number` and `suffix` (absent on the motorcycle plate).

`private` is `AA 000 AA`; `twoLine` puts the prefix above the number and
suffix; `motorcycle` is the square `AA 00000`. The blue bands and the
yellow ring are painted by the background.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

