import 'package:go_router/go_router.dart';
import 'package:meduguri/pages/drawer/events/view/event.dart';
import 'package:meduguri/pages/drawer/groups/view/group.dart';
import 'package:meduguri/pages/drawer/members/view/members.dart';
import 'package:meduguri/pages/register/view/register_page.dart';
import 'package:nb_utils/nb_utils.dart';

import '../pages/drawer/chat_lead/view/chat.dart';
import '../pages/drawer/connect/view/connect.dart';
import '../pages/drawer/mentor/view/mentor_page.dart';
import '../pages/drawer/messages/view/messages.dart';
import '../pages/home/view/home_page.dart';
import '../pages/login/view/login_page.dart';
import 'constant.dart';

const String loginRoute = '/login';
const String homeRoute = '/home';
const String registerRoute = '/signup';
const String chatLeadRoute = '/chatLead';
const String connectRoute = '/connectRoute';
const String memberRoute = '/memberRoute';
const String messagesRoute = '/messagesRoute';
const String eventRoute = '/eventRoute';
const String mentorRoute = '/mentorRoute';
const String groupRoute = '/groupRoute';

const String changePassRoute = '/changePass';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) {
        return getBoolAsync(kIsLoggedIn, defaultValue: false)
            ? homeRoute
            : loginRoute;

        /*  ? const StoreBottomNavigation()
                : const CustomerBottomNavigation(); */
      },
      //builder: (context, state) => const NewsListPage(),
    ),
    /*  GoRoute(
      path: '/news/:id',
      builder: (context, state) => NewsPage(
        id: state.params['id']!,
      ),
    ), */
    GoRoute(
      path: homeRoute,
      builder: (context, state) => const HomePage(),
    ),

    GoRoute(
      path: loginRoute,
      builder: (context, state) => const LoginPage(),
    ),

    GoRoute(
      path: chatLeadRoute,
      builder: (context, state) => const ChatLead(),
    ),

    GoRoute(
      path: connectRoute,
      builder: (context, state) => const ConnectPage(),
    ),
    GoRoute(
      path: memberRoute,
      builder: (context, state) => const MemberPage(),
    ),
    GoRoute(
      path: messagesRoute,
      builder: (context, state) => const MessagesPage(),
    ),
    GoRoute(
      path: eventRoute,
      builder: (context, state) => const EventPage(),
    ),
    GoRoute(
      path: mentorRoute,
      builder: (context, state) => const MentorPage(),
    ),
    GoRoute(
      path: groupRoute,
      builder: (context, state) => const GroupPage(),
    ),

    /*  GoRoute(
      path: signUpRoute,
      builder: (context, state) => const RegisterPage(),
    ), */
    /*  GoRoute(
      path: fsignUpRoute,
      builder: (context, state) => const FirstRegisterPage(),
    ), */
    /*  GoRoute(
      path: changePassRoute,
      builder: (context, state) => const ChangePasswordPage(),
    ), */
    /* path: '/news/:id',
      builder: (context, state) => NewsPage(
        id: state.params['id']!,
      ), */
    //CustomerStoreViewScreen
/*     GoRoute(
      path: '$customerStoreViewRoute/:storeId',
      builder: (context, state) => CustomerStoreViewScreen(
        storeId: state.params['storeId']!,
      ),
    ),

    GoRoute(
      path: mapViewRoute,
      builder: (context, state) {
        LatLng position = state.extra as LatLng;
        return MapScreen(
          initialPosNew: position,
        );
      },
    ),
    GoRoute(
      path: '$guestUserStoreViewRoute/:categoryId',
      builder: (context, state) => GuestUserStoreView(
        categoryId: state.params['categoryId']!,
      ),
    ),
    GoRoute(
      path: createStoryRoute,
      builder: (context, state) => const CreateStory(),
    ),
    GoRoute(
      path: '$storeRoute/:categoryId/:isGuestUser',
      builder: (context, state) => Store(
        categoryId: state.params['categoryId']!,
        isGuestUser: state.params['isGuestUser']!,
      ),
    ),
    GoRoute(
      path: viewAllStoriesRoute,
      builder: (context, state) {
        List<Story?>? stories = state.extra as List<Story?>?;

        return ViewAllStories(
          stories: stories,
          index: 0,
        );
      },
    ),
    GoRoute(
      path: '$otpVerificationRoute/:phoneNumber/:isStore',
      builder: (context, state) => OtpVerificationScreen(
        phoneNumber: state.params['phoneNumber']!,
        isStore: state.params['isStore']!,
      ),
    ),

    /* ViewStory(
                                      storeId: newList[index]!.id.toString(),
                                      storeName: 
                                          newList[index]!.storeName,
                                      isFollowed: newList[index]!.isFollowed,
                                      storeArName: newList[index]!.storeArName,
                                    ), */

    GoRoute(
      path:
          '$viewStoryRoute/:storeId/:storeName/:isFollowed/:storeArName:/categoryId',
      builder: (context, state) => ViewStory(
        storeId: state.params['storeId']!,
        storeName: state.params['storeName']!,
        storeArName: state.params['storeArName']!,
        isFollowed: state.params['isFollowed']!,
        categoryId: state.params['categoryId']!,
      ),
    ),
    GoRoute(
      path:
          '$guestUserViewStoryRoute/:storeId/:storeName/:isFollowed/:storeArName',
      builder: (context, state) => GuestUserViewStory(
        storeId: state.params['storeId']!,
        storeName: state.params['storeName']!,
        storeArName: state.params['storeArName']!,
        isFollowed: state.params['isFollowed']!,
      ),
    ), */
  ],
);
