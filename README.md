# LibGen Mobile

---
### Looking for maintainers!
Due to my limited amount of time, I haven't been able to keep this project updated. The app and the server still are running and I plan it to keep like that, but currently, I'm not able to build more features. At least not at the required pace. So, contact me or simply fork and code. I'll remain aware and try to help with anything. Thanks.
---

[![F-Droid](https://img.shields.io/f-droid/v/com.manuelvargastapia.libgen?color=%231976d2)](https://f-droid.org/packages/com.manuelvargastapia.libgen) [![GitHub](https://img.shields.io/github/license/manuelvargastapia/libgen_mobile_app?color=%2335c202)](https://github.com/manuelvargastapia/libgen_mobile_app/blob/main/LICENSE)

<a href="https://f-droid.org/packages/com.manuelvargastapia.libgen" target="_blank">
<img src="https://fdroid.gitlab.io/artwork/badge/get-it-on.png" height="75">
</a>

This is a **non-offical** mobile client for [Library Genesis](http://gen.lib.rus.ec) service. It's an independent side project. And it's Open Source, so feel free to collaborate.

The app is built with Flutter and it's available in [FDroid](https://f-droid.org).

Currently, we're working mainly in Android version.

[_Versión en español_](README.es.md)

## Features

- Search books in **SciTech** or **Fiction** sections of Library Genesis, by title, author, series, publisher, ISBN or MD5
- In SciTech, order results by relevance, title, year, pages or file size, and decide ordering criteria according to sorting option (newer firsts, smaller first, etc)
- In Fiction, filter by file extension: Epub, Mobi, AZW, AZW3, FB2, PDF, RTF, and TXT; filter by a language among a large amount of options; and also, use the "Wildcard" option to search using each word as a wildcard
- See detailed info about the books (depending on the metadata provided, some field may be not be present): cover image, title, author, description, table of contents, year, volume, series, edition, publisher, city, pages, language, ISBN, DOI, file size, and file extension
- Show search history as suggestions
- Switch between ligh and dark theme
- Show info dialog
- Available on multiple languages: German (DE), English (US), Spanish (ES), French (FR), Japanese (JP), Polish (PL), Portuguese (BR), and Chinese (CN, simplified)
- And of course, download any book. Multiple download options are provided.

## TODO

The following is a list of desired new features within the scope of the project. Notwithstanding, we're happy to hear new ideas and feeback.

- [ ] Search books in other sections of LibGen (SciTech and Fiction already covered)
- [ ] Allow for switching between languages, instead of only using the system's
- [ ] Translate to other languages (see above the list of languages already covered)
- [ ] UI improvements (smoother animations, colors, layout, fonts, etc)
- [ ] Filter by file extension (already implement in Fiction, but it may require some extra work to do it in SciTech)

**We recommend to submit first an issue to discuss ideas, instead of directly send a PR.**

## Environment

### Flutter and Dart

- Flutter: version 2.0.4 (channel stable)
- Dart: version 2.12.2

### Environment config

We're managing the different stages of the app (basically, _development_ and _production_) throught **compile time variables** (check [this article](https://binary-studio.com/2020/06/23/flutter-3/) for information). The only environmental variable in use right now is LIBGEN_MOBILE_API. This allow us to pass a development and production API URL directly from CLI commands.

Also note that this app is using [multiple flavors](https://github.com/Than-DE/libgen_mobile_app/blob/main/android/app/build.gradle#L51), therefore it has to be specifically referenced when running the app. Otherwise, you'll get the a "Gradle build failed to produce an .apk file" error.

To run the app with compile time variable plus the correct flavor, use the following command:

`flutter run --dart-define=LIBGEN_API_URL=<VALUE> --flavor local`

Finally, in VSCode, it could be useful define a `launch.json` file to debug. Such file would look like this:

```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "emulator",
            "request": "launch",
            "type": "dart",
            "args": [
                "--dart-define=LIBGEN_API_URL=http://10.0.2.2:3000",
                "--flavor",
                "local"
            ]
        },
    ]
}
```

Those flags also work with `flutter build apk` and others similar commands.

IMPORTANT

To use a phisical device to run the app, you'll need to pass the internal IP of the machine that's running the server as the value of LIBGEN_API_URL. "http://10.0.2.2:3000" will only provide access to emulators, as those are part of the same network.

## Libgen API

Library Genesis doesn't provide a public API to work with, so we decided to build a _backend_ service to consume. It's currently hosted in Heroku.

Check [the repo](https://github.com/manuelvargastapia/libgen_api/tree/master) to run your own instance and pass the corresponding URLs to the app throught compile time variables. It's an ExpressJS project; you just need to clone (or fork) the repo, install dependencies and run `npm start`.

During development, a forked version of [this unofficial Libgen library](https://github.com/dunn/libgen.js) has been used to get the data. [This is the repo](https://github.com/manuelvargastapia/libgen.js/tree/custom_libgen) of our modified version.

## Dependencies

The followings are all the official and third-party packages in use right now.

**Internationalization**

- flutter_localizations:
  - sdk: flutter
- [intl](https://pub.dev/packages/intl): ^0.17.1

Additionally, for generating the needed boilerplate we used the VSCode plugin [_Flutter Intl_](https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl). This way, is recommended using this plugin to automatically generate new code for new locales. Unfortunately, [the offical docs](https://flutter.dev/docs/development/accessibility-and-localization/internationalization) seems to be outdated.

**API requests**

- [http](https://pub.dev/packages/http): ^0.13.2

**State management**

- [flutter_bloc](https://pub.dev/packages/flutter_bloc): ^6.0.6
- [hydrated_bloc](https://pub.dev/packages/hydrated_bloc): ^6.1.0

**Downloads**

For downloading, we're using a [fork](https://github.com/manuelvargastapia/flutter_downloader) of _flutter_downloader_ package. Check `pubspec.yaml` for details.

- [flutter_downloader](https://pub.dev/packages/flutter_downloader)
- [downloads_path_provider](https://pub.dev/packages/downloads_path_provider): ^0.1.0
- [permission_handler](https://pub.dev/packages/permission_handler): ^5.0.1+1

**Open download link in browser**

- [url_launcher](https://pub.dev/packages/url_launcher): ^5.7.10

**Render HTML content**

For rendering HTML, we're using a [fork](https://github.com/manuelvargastapia/simple_html_css_flutter) of _simple_html_css_ package. Check `pubspec.yaml` for details.

- [simple_html_css](https://pub.dev/packages/simple_html_css)

**Local storage**

- [hive](https://pub.dev/packages/hive): ^1.4.4+1
- [hive_flutter](https://pub.dev/packages/hive_flutter): ^0.3.1

**Code generation**

- [json_annotation](https://pub.dev/packages/json_annotation): ^3.1.0
- [build_runner](https://pub.dev/packages/build_runner): ^1.10.3
- [json_serializable](https://pub.dev/packages/json_serializable): ^3.5.0
- [hive_generator](https://pub.dev/packages/hive_generator): ^0.8.2
- [equatable](https://pub.dev/packages/equatable): ^1.2.5

**Others**

- [dartz](https://pub.dev/packages/dartz): ^0.9.2
- [expandable](https://pub.dev/packages/expandable): ^4.1.4
- [package_info](https://pub.dev/packages/package_info): ^0.4.3+2
