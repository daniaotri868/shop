import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/config/theme/colors_app.dart';
import '../../features/app/domin/repositories/prefs_repository.dart';

class HelperFunctions {
  HelperFunctions._singleton();

  static HelperFunctions? _instance;

  factory HelperFunctions() {
    return instance;
  }

  static HelperFunctions get instance => _instance ??= HelperFunctions._singleton();

  Future<void> logout() async {
    await GetIt.I.resetLazySingleton<Dio>();
    await GetIt.I<PrefsRepository>().clearUser();
    return;
  }


  static Future<bool> urlLauncherApplication(String url) async {
    final uri = Uri.parse(url);
    // if (await canLaunchUrl(uri)) {
      return await launchUrl(
        uri,
        mode: Platform.isAndroid ? LaunchMode.externalNonBrowserApplication : LaunchMode.externalApplication,
        webViewConfiguration: const WebViewConfiguration(enableDomStorage: false, enableJavaScript: false),
      );
    // } else {
    //   throw Exception('Unable to launch url');
    // }
  }


}
