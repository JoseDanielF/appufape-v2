import 'package:thunderapp/screens/menu/menu.dart';
import 'package:thunderapp/screens/pages/calendario/calendario_page.dart';
import 'package:thunderapp/screens/pages/contatos/contatos_page.dart';
import 'package:thunderapp/screens/pages/contatos/docentes/docentes_page.dart';
import 'package:thunderapp/screens/pages/contatos/estrutura/estrutura_ad_page.dart';
import 'package:thunderapp/screens/pages/contatos/tecnicos/tecnicos_page.dart';
import 'package:thunderapp/screens/pages/cursos/cursos_page.dart';
import 'package:thunderapp/screens/pages/cursos/doutorado/doutorado_page.dart';
import 'package:thunderapp/screens/pages/cursos/especializacao/especializacao_page.dart';
import 'package:thunderapp/screens/pages/cursos/graduacao/graduacao_page.dart';
import 'package:thunderapp/screens/pages/cursos/mestrado/mestrado_page.dart';
import 'package:thunderapp/screens/pages/editais/editais_screen.dart';
import 'package:thunderapp/screens/pages/editais/edital_page.dart';
import 'package:thunderapp/screens/pages/mapa/mapa_page.dart';
import 'package:thunderapp/screens/pages/qrcode/qrcode_page.dart';
import 'package:thunderapp/screens/start/start_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:thunderapp/screens/carousel/carousel_screen.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/shared/constants/app_theme.dart';
import 'screens/home/home_screen.dart';
import 'screens/pages/noticias/noticias_page.dart';
import 'screens/signin/sign_in_screen.dart';
import 'screens/splash/splash_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App UFAPE',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: (context, child) {
        return DevicePreview.appBuilder(
            context,
            ResponsiveWrapper.builder(child,
                minWidth: 640,
                maxWidth: 1980,
                defaultScale: true,
                breakpoints: const [
                  ResponsiveBreakpoint.resize(480, name: MOBILE),
                  ResponsiveBreakpoint.resize(768, name: TABLET),
                  ResponsiveBreakpoint.resize(1024, name: DESKTOP),
                ]));
      },
      debugShowCheckedModeBanner: false,
      initialRoute: Screens.splash,
      home: const HomeScreen(),
      theme: AppTheme.getLightTheme(),
      routes: {
        Screens.splash: (BuildContext context) => const SplashScreen(),
        Screens.home: (BuildContext context) => const HomeScreen(),
        Screens.signin: (BuildContext context) => const SignInScreen(),
        Screens.carousel: (BuildContext context) => const CarouselScreen(),
        Screens.start: (BuildContext context) => const StartScreen(),
        Screens.calendario: (BuildContext context) => const CalendarioPage(),
        Screens.contatos: (BuildContext context) => const ContatosPage(),
        Screens.docentes: (BuildContext context) => const DocentesPage(),
        Screens.estrutura: (BuildContext context) => const EstruturaAdPage(),
        Screens.tecnicos: (BuildContext context) => const TecnicosPage(),
        Screens.especializacao: (BuildContext context) =>
            const EspecializacaoPage(),
        Screens.cursos: (BuildContext context) => const CursosPage(),
        Screens.doutorado: (BuildContext context) => const DoutoradoPage(),
        Screens.mestrado: (BuildContext context) => const MestradoPage(),
        Screens.graduacao: (BuildContext context) => const GraduacaoPage(),
        Screens.editais: (BuildContext context) => const EditaisScreen(),
        Screens.editalPage: (BuildContext context) => const EditalPage(),
        Screens.mapa: (BuildContext context) => const MapaPage(),
        Screens.qrcode: (BuildContext context) => const QrCodePage(),
        Screens.menu: (BuildContext context) => const Menu(),
        Screens.noticias: (BuildContext context) => const NoticiasPage(),
      },
    );
  }
}
