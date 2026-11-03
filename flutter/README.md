FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the creative people of Italy to view examples:

https://platexample.ir/#/discover/italy:flutter

# italy_plate

Italy's licence plates for the plate_core library: the EU-band car plate, the two-line plate and the motorcycle plate, black on white, with an advisory validator.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/italy_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/italy:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/italy_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/italy:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/italy_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/italy:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/italy_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/italy:typescript) |

## Quick start

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  italy_plate: ^0.1.0
```

### Use

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

## Specs

Each spec is one plate layout.

- `ItalyPlates.private`
- `ItalyPlates.twoLine`
- `ItalyPlates.motorcycle`
- `ItalyPlates.diplomatic`
- `ItalyPlates.consular`
- `ItalyPlates.unitedNations`
- `ItalyPlates.unitedNationsSpecialists`
- `ItalyPlates.unitedNationsTransit`

## Themes

- `ItalyThemes.private`
- `ItalyThemes.twoLine`
- `ItalyThemes.motorcycle`
- `ItalyThemes.diplomatic`

## Change it

`PlateCanvas` takes `spec:` (an entry of `ItalyPlates`) and `theme:` (an entry of `ItalyThemes`). Set `validator:` to `ItalyValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `ItalyCountry` — the country panel.
- `ItalyValidator` — the plate validator.
- `ItalyMissions` — code table.

## Plates

Groups `prefix`, `number` and `suffix` (absent on the motorcycle plate).

`private` is `AA 000 AA`; `twoLine` puts the prefix above the number and
suffix; `motorcycle` is the square `AA 00000`. The blue bands and the
yellow ring are painted by the background.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/italy_plate/blob/main/LICENSE).
