import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mountain/utilities/google_sign_in.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mountain/navpages/main_page.dart';
import 'package:mountain/pages/detail_page.dart';
import 'package:mountain/pages/welcome_page.dart';


void main() async {
  /*WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );*/
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key ? key}) : super(key :key );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue ,
      ),
      home: SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isFirebaseInitialized = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeFirebase();
  }

  void anasayfa_git() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
        (context) => const MainPage(),
    ));
  }
  Future <void> initializeFirebase() async {
    Firebase.initializeApp();
    setState(() {
      isFirebaseInitialized = true;
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: isFirebaseInitialized ?
            ElevatedButton( onPressed:() async{
              anasayfa_git();
            }, child:const Text('Başla'),)
         :const CircularProgressIndicator(),
      ),
      );
  }
}
