import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ChineseCupertinoLocalizations implements CupertinoLocalizations {
  final materialDelegate = GlobalMaterialLocalizations.delegate;
  final widgetsDelegate = GlobalWidgetsLocalizations.delegate;
  final local = const Locale('zh');

  MaterialLocalizations ml;

  Future init() async {
    ml = await materialDelegate.load(local);
    print(ml.pasteButtonLabel);
  }

  @override
  String get alertDialogLabel => ml.alertDialogLabel;

  // TODO: implement anteMeridiemAbbreviation
  @override
  String get anteMeridiemAbbreviation => ml.anteMeridiemAbbreviation;

  // TODO: implement copyButtonLabel
  @override
  String get copyButtonLabel => ml.copyButtonLabel;

  // TODO: implement cutButtonLabel
  @override
  String get cutButtonLabel => ml.cutButtonLabel;

  // TODO: implement datePickerDateOrder
  @override
  DatePickerDateOrder get datePickerDateOrder => DatePickerDateOrder.mdy;

  // TODO: implement datePickerDateTimeOrder
  @override
  DatePickerDateTimeOrder get datePickerDateTimeOrder => DatePickerDateTimeOrder.date_time_dayPeriod;

  @override
  String datePickerDayOfMonth(int dayIndex) {
    return dayIndex.toString();
  }

  @override
  String datePickerHour(int hour) {
    return hour.toString().padLeft(2, "0");
  }

  @override
  String datePickerHourSemanticsLabel(int hour) {
    return "$hour" + "时";
  }

  @override
  String datePickerMediumDate(DateTime date) {
    return ml.formatMediumDate(date);
  }

  @override
  String datePickerMinute(int minute) {
    return minute.toString().padLeft(2, '0');
  }

  @override
  String datePickerMinuteSemanticsLabel(int minute) {
    return "$minute" + "分";
  }

  @override
  String datePickerMonth(int monthIndex) {
    return "$monthIndex";
  }

  @override
  String datePickerYear(int yearIndex) {
    return yearIndex.toString();
  }

  // TODO: implement pasteButtonLabel
  @override
  String get pasteButtonLabel => ml.pasteButtonLabel;

  // TODO: implement postMeridiemAbbreviation
  @override
  String get postMeridiemAbbreviation => ml.postMeridiemAbbreviation;

  // TODO: implement selectAllButtonLabel
  @override
  String get selectAllButtonLabel => ml.selectAllButtonLabel;

  @override
  String timerPickerHour(int hour) {
    return hour.toString().padLeft(2, "0");
  }

  @override
  String timerPickerHourLabel(int hour) {
    return "$hour".toString().padLeft(2, "0") + "时";
  }

  @override
  String timerPickerMinute(int minute) {
    return minute.toString().padLeft(2, "0");
  }

  @override
  String timerPickerMinuteLabel(int minute) {
    return minute.toString().padLeft(2, "0") + "分";
  }

  @override
  String timerPickerSecond(int second) {
    return second.toString().padLeft(2, "0");
  }

  @override
  String timerPickerSecondLabel(int second) {
    return second.toString().padLeft(2, "0") + "秒";
  }

  static const LocalizationsDelegate<CupertinoLocalizations> delegate = _ChineseDelegate();

  static Future<CupertinoLocalizations> load(Locale locale) async {
    var localizaltions = ChineseCupertinoLocalizations();
    await localizaltions.init();
    return SynchronousFuture<CupertinoLocalizations>(localizaltions);
  }
}

class _ChineseDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  const _ChineseDelegate();

  @override
  bool isSupported(Locale locale) {
    return locale.languageCode == 'zh';
  }

  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    return ChineseCupertinoLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<CupertinoLocalizations> old) {
    return false;
  }
}
