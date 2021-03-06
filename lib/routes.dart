import 'package:flutter/widgets.dart';
import 'package:shop_app/components/no_auth.dart';
import 'package:shop_app/screens/buyers/buyer_screen.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/chat/chat_screen.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/myshop/add_product_screen.dart';
import 'package:shop_app/screens/myshop/myshop_screen.dart';
import 'package:shop_app/screens/myshop/tabs/onmarket_tab.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/buyers/chat/chat_section_screen.dart';
import 'package:shop_app/screens/pembejeo/pembejeo_screen.dart';



import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
   NoAuthBanner.routeName: (context) => NoAuthBanner(),
   BuyerScreen.routeName: (context) => BuyerScreen(),
   ChatSectionScreen.routeName: (context) => ChatSectionScreen(),
   PembejeoScreen.routeName: (context) => PembejeoScreen(),
   MyShopScreen.routeName: (context) => MyShopScreen(),
   AddProductScreen.routeName: (context) => AddProductScreen(),
   OnMarket.routeName: (context) => OnMarket(),

};
