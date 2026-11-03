FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the creative people of Italy to view examples:

https://platexample.ir/#/discover/italy:kotlin

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

### Install (Kotlin)

Copy `kotlin/src/commonMain/kotlin/plates/countries/italy/` into `plate_core/kotlin/src/commonMain/kotlin/plates/countries/`.

Then run the tests from `plate_core/kotlin/`: `./gradlew jvmTest`.

### Use

```kotlin
import plates.countries.italy.country

val spec = country.specs["it.private"]
println(country.pkg)
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

- Specs: `country.specs`, by id.
- Themes: `country.themes`.
- Validators: `country.validators` (`ItalyValidator`, `ItalyDiplomaticValidator`).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/italy_plate/blob/main/LICENSE).
