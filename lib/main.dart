import 'package:book_easy/features/login/bloc/login_bloc.dart';
import 'package:book_easy/features/signup/bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/onboarding/first_onboarding/first_onboarding_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/payment/bloc/payment_bloc.dart';
import 'features/renter/bloc/renter_bloc.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(
    //   context,
    //   designSize: const Size(393, 852),
    // );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => SignupBloc(),
        ),
        BlocProvider(
            create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => PaymentBloc(),
        ),
        BlocProvider(
          create: (context) => RenterBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue.shade900,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const FirstOnboardingPage(),

      ),
    );
  }
}

