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

  /// `Add to existing APP`
  String get appName {
    return Intl.message(
      'Add to existing APP',
      name: 'appName',
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

  /// `Increment`
  String get counter_button_increment {
    return Intl.message(
      'Increment',
      name: 'counter_button_increment',
      desc: '',
      args: [],
    );
  }

  /// `You have pushed the button this many times:`
  String get counter_push_button_times {
    return Intl.message(
      'You have pushed the button this many times:',
      name: 'counter_push_button_times',
      desc: '',
      args: [],
    );
  }

  /// `Buttons & Messaging`
  String get home_menu_buttons_and_messaging {
    return Intl.message(
      'Buttons & Messaging',
      name: 'home_menu_buttons_and_messaging',
      desc: '',
      args: [],
    );
  }

  /// `Counter`
  String get home_menu_counter {
    return Intl.message(
      'Counter',
      name: 'home_menu_counter',
      desc: '',
      args: [],
    );
  }

  /// `Fragment Widget`
  String get home_menu_fragment {
    return Intl.message(
      'Fragment Widget',
      name: 'home_menu_fragment',
      desc: '',
      args: [],
    );
  }

  /// `Fullscreen Widget`
  String get home_menu_fullscreen {
    return Intl.message(
      'Fullscreen Widget',
      name: 'home_menu_fullscreen',
      desc: '',
      args: [],
    );
  }

  /// `riverpod example - Users`
  String get home_menu_user_list {
    return Intl.message(
      'riverpod example - Users',
      name: 'home_menu_user_list',
      desc: '',
      args: [],
    );
  }

  /// `Weather API example`
  String get home_menu_weather {
    return Intl.message(
      'Weather API example',
      name: 'home_menu_weather',
      desc: '',
      args: [],
    );
  }

  /// `Home Page`
  String get home_title {
    return Intl.message(
      'Home Page',
      name: 'home_title',
      desc: 'Home Page title',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Permission denied, cannot access location information.`
  String get permission_denied_geolocation {
    return Intl.message(
      'Permission denied, cannot access location information.',
      name: 'permission_denied_geolocation',
      desc: '',
      args: [],
    );
  }

  /// `Add User`
  String get user_add {
    return Intl.message(
      'Add User',
      name: 'user_add',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get user_email {
    return Intl.message(
      'Email address',
      name: 'user_email',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get user_id {
    return Intl.message(
      'ID',
      name: 'user_id',
      desc: '',
      args: [],
    );
  }

  /// `Created at (local time)`
  String get user_local_create_time {
    return Intl.message(
      'Created at (local time)',
      name: 'user_local_create_time',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get user_name {
    return Intl.message(
      'Name',
      name: 'user_name',
      desc: '',
      args: [],
    );
  }

  /// `No Name`
  String get user_no_name {
    return Intl.message(
      'No Name',
      name: 'user_no_name',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get user_phone {
    return Intl.message(
      'Phone Number',
      name: 'user_phone',
      desc: '',
      args: [],
    );
  }

  /// `Created at (UTC)`
  String get user_utc_create_time {
    return Intl.message(
      'Created at (UTC)',
      name: 'user_utc_create_time',
      desc: '',
      args: [],
    );
  }

  /// `City weather`
  String get weather_city_weather {
    return Intl.message(
      'City weather',
      name: 'weather_city_weather',
      desc: '',
      args: [],
    );
  }

  /// `Current weather`
  String get weather_current_weather {
    return Intl.message(
      'Current weather',
      name: 'weather_current_weather',
      desc: '',
      args: [],
    );
  }

  /// `Is day`
  String get weather_forecast_hint_is_day {
    return Intl.message(
      'Is day',
      name: 'weather_forecast_hint_is_day',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get weather_forecast_hint_location {
    return Intl.message(
      'Location',
      name: 'weather_forecast_hint_location',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get weather_forecast_hint_temperature {
    return Intl.message(
      'Temperature',
      name: 'weather_forecast_hint_temperature',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get weather_forecast_hint_time {
    return Intl.message(
      'Time',
      name: 'weather_forecast_hint_time',
      desc: '',
      args: [],
    );
  }

  /// `Weather code`
  String get weather_forecast_hint_weather_code {
    return Intl.message(
      'Weather code',
      name: 'weather_forecast_hint_weather_code',
      desc: '',
      args: [],
    );
  }

  /// `Wind direction`
  String get weather_forecast_hint_wind_direction {
    return Intl.message(
      'Wind direction',
      name: 'weather_forecast_hint_wind_direction',
      desc: '',
      args: [],
    );
  }

  /// `Wind speed`
  String get weather_forecast_hint_wind_speed {
    return Intl.message(
      'Wind speed',
      name: 'weather_forecast_hint_wind_speed',
      desc: '',
      args: [],
    );
  }

  /// `Location is not available`
  String get weather_hint_location_not_available {
    return Intl.message(
      'Location is not available',
      name: 'weather_hint_location_not_available',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get weather_search_hint_city {
    return Intl.message(
      'City',
      name: 'weather_search_hint_city',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a city`
  String get weather_search_hint_error {
    return Intl.message(
      'Please enter a city',
      name: 'weather_search_hint_error',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get weather_search_label_city {
    return Intl.message(
      'City',
      name: 'weather_search_label_city',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
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
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
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
