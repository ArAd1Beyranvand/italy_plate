FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the creative people of Italy to view examples:

https://platexample.ir/#/discover/italy:python

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

### Install (Python)

Copy `python/plates/countries/italy/` into `plate_core/python/plates/countries/`.

Then run the tests from `plate_core/python/`: `pytest`.

### Use

```python
from plates.countries.italy.data import SPECS, THEMES

spec = SPECS["it.private"]
theme = THEMES["ItalyThemes.private"]
print(spec.id)
```

## Specs

The specs are the same in every language (they come from shared data).

- `it.private`
- `it.twoline`
- `it.motorcycle`
- `it.diplomatic`
- `it.consular`
- `it.un`
- `it.unp`
- `it.unt`

## Themes

- `ItalyThemes.private`
- `ItalyThemes.twoLine`
- `ItalyThemes.motorcycle`

## Change it

- Pick a spec: use another key of `SPECS`.
- Pick a theme: use another key of `THEMES`.
- Validators: `VALIDATORS` maps the names `ItalyValidator`, `ItalyDiplomaticValidator` to classes.

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/italy_plate/blob/main/LICENSE).
