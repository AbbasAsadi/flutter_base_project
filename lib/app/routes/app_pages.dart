import 'package:flutter_base_project/presentation/pages/splash/splash_page.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => SplashPage(),
    ),
    // GetPage(
    //   name: Routes.editProfile,
    //   page: () => const EditProfilePage(),
    //   binding: EditProfileBinding(),
    //   curve: Curves.fastOutSlowIn,
    //   transitionDuration: const Duration(seconds: 1),
    //   transition: Transition.fadeIn,
    //   middlewares: [
    //     AuthMiddleware(),
    //   ],
    // ),
    // GetPage(
    //   name: Routes.login,
    //   page: () => const LoginPage(),
    //   binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: Routes.otp,
    //   page: () => OTPPage(),
    //   binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: Routes.supplementaryInformation,
    //   page: () => const SupplementaryInformationPage(),
    //   binding: SupplementaryInformationBinding(),
    // ),
    // GetPage(
    //   name: Routes.chooseAvatar,
    //   page: () => const ChooseAvatarPage(),
    //   binding: SupplementaryInformationBinding(),
    // ),
    // GetPage(
    //   name: Routes.main,
    //   page: () => MainPage(),
    // ),
    // GetPage(
    //   name: Routes.bookDetail,
    //   page: () => const BookDetailPage(),
    //   binding: BookDetailBinding(),
    //   curve: Curves.fastOutSlowIn,
    //   transitionDuration: const Duration(seconds: 1),
    //   transition: Transition.fadeIn,
    // ),
    // GetPage(
    //   name: Routes.cart,
    //   page: () => const CartPage(),
    //   curve: Curves.fastOutSlowIn,
    //   transitionDuration: const Duration(seconds: 1),
    //   transition: Transition.fadeIn,
    // ),
    // GetPage(
    //   name: Routes.search,
    //   page: () => const BookSearchPage(),
    //   binding: BookSearchBinding(),
    //   curve: Curves.fastOutSlowIn,
    //   transitionDuration: const Duration(seconds: 1),
    //   transition: Transition.fadeIn,
    // ),
    // GetPage(
    //   name: Routes.content,
    //   page: () => const BookContentPage(),
    //   binding: BookContentBinding(),
    //   curve: Curves.fastOutSlowIn,
    //   transitionDuration: const Duration(seconds: 1),
    //   transition: Transition.fadeIn,
    // ),
    // GetPage(
    //   name: Routes.profile,
    //   page: () => const ProfileScreen(),
    //   middlewares: [
    //     AuthMiddleware(),
    //   ],
    // ),
    // GetPage(
    //   name: Routes.editAccount,
    //   page: () => const EditAccountScreen(),
    //   middlewares: [
    //     AuthMiddleware(),
    //   ],
    // ),
    // GetPage(
    //   name: Routes.addresses,
    //   page: () => const AddressesScreen(),
    //   middlewares: [
    //     AuthMiddleware(),
    //   ],
    // ),
    // GetPage(
    //   name: Routes.bookmarks,
    //   page: () => const BookmarksScreen(),
    //   middlewares: [
    //     AuthMiddleware(),
    //   ],
    // ),
    // GetPage(
    //   name: Routes.orders,
    //   page: () => const OrdersScreen(),
    //   middlewares: [
    //     AuthMiddleware(),
    //   ],
    // ),
    // GetPage(
    //   name: Routes.downloads,
    //   page: () => const DownloadsScreen(),
    //   middlewares: [
    //     AuthMiddleware(),
    //   ],
    // ),
    // GetPage(
    //   name: Routes.checkout,
    //   page: () => const CheckoutScreen(),
    //   middlewares: [
    //     AuthMiddleware(),
    //   ],
    // ),
    // GetPage(
    //   name: Routes.diamond,
    //   page: () => const DiamondArticlesScreen(),
    //   middlewares: [
    //     AuthMiddleware(),
    //     DiamondMiddleware(),
    //   ],
    // ),
  ];
}
