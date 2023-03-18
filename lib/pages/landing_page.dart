import 'package:flutter/material.dart';
import '../providers/app_user.dart';
import 'home_page.dart';
import 'sign_in_page.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appUser = context.watch<AppUser>().isSignedIn;
    print(appUser);
    return appUser ? HomePage() : SignInPage();
  }
}