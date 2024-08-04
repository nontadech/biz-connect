import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/pages/pages.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppRouter {
  final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) =>
        Obx(() {
          final authC = AuthController.call;
          if(!authC.isLoggedIn.value){
            FlutterNativeSplash.remove();
            return const SignInPage();
          }else{
            authC.postFCMToken();
            return const LayoutPage(AppBarPage.home);
          }
        })
      ),
      GoRoute(
        path: '/my_events',
        builder: (context, state) => const LayoutPage(AppBarPage.myEvent),
      ),
      GoRoute(
        path: '/my_event',
        builder: (context, state) { 
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return MyEventPage(
            events: extra['events'],
          );
        }
      ),
      GoRoute(
        path: '/my_favorite',
        builder: (context, state) => const LayoutPage(AppBarPage.myFavorite),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const LayoutPage(AppBarPage.profile),
      ),
      GoRoute(
        path: '/sign_in',
        builder: (context, state) => 
         Obx(() {
          final authC = AuthController.call;
          if(!authC.isLoggedIn.value){
            FlutterNativeSplash.remove();
            return const SignInPage();
          }else{
            return const LayoutPage(AppBarPage.home);
          }
        }),
      ),
       GoRoute(
        path: '/sign_up',
        builder: (context, state) => 
         Obx(() {
          final authC = AuthController.call;
          if(!authC.isLoggedIn.value){
            return const SignUpPage();
          }else{
            return const LayoutPage(AppBarPage.home);
          }
        }),
      ),
      GoRoute(
        path: '/forgot',
        builder: (context, state) => const ForgotPage(),
      ),
      GoRoute(
        path: '/scan',
        builder: (context, state) => const ScanPage(),
      ),
      GoRoute(
        path: '/scan/scan_detail',
         builder: (context, state){
        Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return ScanDetailPage(
            code: extra['code'],
          );
        },
      ),
      GoRoute(
        path: '/popular_events',
        builder: (context, state) {
          return const PopularEventsPage();
        }
      ),
      GoRoute(
        path: '/popular_event',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return PopularEventPage(
            event: extra['event'],
          );
        },
      ),
      GoRoute(
        path: '/event_calendar',
        builder: (context, state) {
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return EventCalendarPage(
             news: extra['news'],
          );
        },
      ),
      GoRoute(
        path: '/events_calendar',
        builder: (context, state) => const EventsCalendarPage(),
      ),
      GoRoute(
        path: '/my_tickets',
        builder: (context, state) => const MyTicketsPage(),
      ),
      GoRoute(
        path: '/my_ticket',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return MyTicketPage(
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/profile/my_qr',
        builder: (context, state) => const MyQrPage(),
      ),
      GoRoute(
        path: '/profile/my_contacts',
        builder: (context, state) => const MyContactsPage(),
      ),
      GoRoute(
        path: '/profile/my_contact',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return MyContactPage(
            contact: extra['contact'],
          );
        },
      ),
      GoRoute(
        path: '/profile/term_condition',
        builder: (context, state) => const TermConditionPage(),
      ),
      GoRoute(
        path: '/profile/term_condition/accept',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return TermConditionAcceptPage(
            isAccept: extra['isAccept'],
            policyType: extra['policyType'],
            title: extra['title'],
          );
        },
      ),
      GoRoute(
        path: '/profile/my_account',
        builder: (context, state) => const MyAccountPage(),
      ),
      GoRoute(
        path: '/join',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return JoinPage(
            event: extra['event'],
          );
        },
      ),
      GoRoute(
        path: '/join/agenda',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return AgendaPage(
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/agenda/session',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return SessionPage(
            session: extra['session'],
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/agenda/session/rate',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return RatePage(
            agendaId: extra['agendaId'],
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/zone',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return ZonePage(
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/speakers',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return SpeakersPage(
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/speaker',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return SpeakerPage(
            speaker: extra['speaker'],
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/downloads',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return DownloadsPage(
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/supported',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return SupportPage(
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/gallery',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return GalleryPage(
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/live_poll',
        builder: (context, state) => const LivePollPage(),
      ),
      GoRoute(
        path: '/join/live_poll/detail',
        builder: (context, state) => const LivePollDetailPage(),
      ),
      GoRoute(
        path: '/join/survey',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return SurveyPage(
            eventId: extra['event_id'],
          );
        },
      ),
      GoRoute(
        path: '/join/survey_thank',
        builder: (context, state) => const SurveyThankPage(),
      ),
      GoRoute(
        path: '/web_view',
        builder: (context, state){
          Map<String, dynamic> extra = state.extra as Map<String, dynamic>;
          return WebViewPage(
            title: extra['title'],
            url: extra['url'],
          );
        },
      ),
      
    ]
  );

  GoRouter get router => _router;
}
