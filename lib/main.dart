import 'package:flutter/material.dart';
import 'pages/login/login_page.dart';
import 'pages/login/welcome_page.dart';
import 'pages/login/role_selection_page.dart';
import 'pages/login/register_form_page.dart';
import 'pages/login/cnpj_page.dart';
import 'pages/login/loading_page.dart';
import 'pages/login/success_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
          prefixIconColor: Colors.green,
          suffixIconColor: Colors.green,
          labelStyle: TextStyle(color: Colors.green),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/welcome': (context) => const WelcomePage(),
        '/role_selection': (context) => const RoleSelectionPage(),
        '/register_form': (context) => const RegisterFormPage(),
        '/cnpj': (context) => const CnpjPage(),
        '/loading': (context) => const LoadingPage(),
        '/success': (context) => const SuccessPage(),
      },
    );
  }
}
