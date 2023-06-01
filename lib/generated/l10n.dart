// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Signal this pool`
  String get signalThisPool {
    return Intl.message(
      'Signal this pool',
      name: 'signalThisPool',
      desc: '',
      args: [],
    );
  }

  /// `Block this user`
  String get blockThisUser {
    return Intl.message(
      'Block this user',
      name: 'blockThisUser',
      desc: '',
      args: [],
    );
  }

  /// `Offensive Language`
  String get offensiveLanguage {
    return Intl.message(
      'Offensive Language',
      name: 'offensiveLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Inappropriate Content`
  String get inappropriateContent {
    return Intl.message(
      'Inappropriate Content',
      name: 'inappropriateContent',
      desc: '',
      args: [],
    );
  }

  /// `Spam`
  String get spam {
    return Intl.message(
      'Spam',
      name: 'spam',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Make your voice heard!`
  String get makeYourVoiceHeard {
    return Intl.message(
      'Make your voice heard!',
      name: 'makeYourVoiceHeard',
      desc: '',
      args: [],
    );
  }

  /// `Ended`
  String get ended {
    return Intl.message(
      'Ended',
      name: 'ended',
      desc: '',
      args: [],
    );
  }

  /// `ends in {time}`
  String endsIn(Object time) {
    return Intl.message(
      'ends in $time',
      name: 'endsIn',
      desc: '',
      args: [time],
    );
  }

  /// `Join Demos`
  String get authTitle {
    return Intl.message(
      'Join Demos',
      name: 'authTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to join the community, vote, and make your voice heard!`
  String get authSubtitle {
    return Intl.message(
      'Sign in to join the community, vote, and make your voice heard!',
      name: 'authSubtitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
