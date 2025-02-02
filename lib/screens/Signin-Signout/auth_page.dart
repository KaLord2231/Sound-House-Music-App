import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sound_house_app/screens/Signin-Signout/dashboard_sign_in_page.dart';
import 'package:sound_house_app/screens/Signin-Signout/page_test.dart';
import 'package:sound_house_app/screens/home_page.dart';

import 'login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          else if(snapshot.hasData){
            return const PageTest();
          }
          else {
            return const DashboardSignIn();
          }
        },
      ),
    );
  }
}
