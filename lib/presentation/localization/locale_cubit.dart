import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/models/shared/lang.dart';

/// Holds the active [Lang], persisted locally. Switching language is client-only
/// (every payload is already bilingual) and drives layout direction app-wide.
@lazySingleton
class LocaleCubit extends Cubit<Lang> {
  LocaleCubit(this._prefs) : super(Lang.fromCode(_prefs.getString(_key)));

  final SharedPreferences _prefs;
  static const String _key = 'app_lang';

  Future<void> setLang(Lang lang) async {
    if (lang == state) return;
    await _prefs.setString(_key, lang.code);
    emit(lang);
  }

  Future<void> toggle() => setLang(state == Lang.en ? Lang.ar : Lang.en);
}
