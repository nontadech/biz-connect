import 'dart:io';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/app/util/dependency.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/entities/setting_entity.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_binding.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:biz_connect/app/config/router/app_router.dart';
import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb;
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'firebase_options.dart';

import 'package:google_fonts/google_fonts.dart';
// ignore: constant_identifier_names
const USE_DATABASE_EMULATOR = false;
const emulatorPort = 9000;
final emulatorHost =
    (!kIsWeb && defaultTargetPlatform == TargetPlatform.android)
        ? '10.0.2.2'
        : 'localhost';
void main() async {
  DependencyCreator.init();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (USE_DATABASE_EMULATOR) {
    FirebaseDatabase.instance.useDatabaseEmulator(emulatorHost, emulatorPort);
  }
  await initServices();
  if (Platform.isIOS) {
    await FirebaseMessaging.instance.getAPNSToken();
  }
  final apnsToken = await FirebaseMessaging.instance.getToken();
  final store = Get.find<LocalStorageService>();
  if(apnsToken != null) {
    store.setting = Setting(
      apnsToken: apnsToken,
    );
  }
  store.setting ??= Setting(
    language: LangType.th,
  );
  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('th', 'TH'),
          Locale('en', 'US'),
        ],
        path: 'assets/translations',
        startLocale: store.setting!.language == LangType.th ? const Locale('th', 'TH') : const  Locale('en', 'US') ,
        child: const MyApp()
    )
  );
}

initServices() async {
  await Get.putAsync(() => LocalStorageService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (_ , child) {
        return GetMaterialApp(
          navigatorKey: NavigationService.navigatorKey,
          theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFAFBFD)),
          home: MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'Biz Connect',
            theme: AppTheme.lightTheme.copyWith(
              textTheme: GoogleFonts.mulishTextTheme(
                Theme.of(context).textTheme,
              ),
            ),
            routerConfig: AppRouter().router,
          ),
          initialBinding: AuthBinding(),
        );
      }
    );
  }
}

class NavigationService {
  static final navigatorKey = GlobalKey<NavigatorState>();

}