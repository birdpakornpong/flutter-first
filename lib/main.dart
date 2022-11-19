// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // as http ตั้งชื่อเพื่อเอาไปใช้

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigator',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class UserAgentClient extends http.BaseClient {
  final String userAgent;
  final http.Client _inner = http.Client();

  UserAgentClient(this.userAgent);

  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['apikey'] = userAgent;
    return _inner.send(request);
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    print('เรียกใช้งาน init State');
    getExchangeRate();
  }

  Future<void> getExchangeRate() async {
    var url = Uri.https("api.apilayer.com", "/exchangerates_data/latest");
    var https = UserAgentClient("1UpDuDknADWynwDbfrentuTRjOgweddB");

    var response = await https.get(url);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("อัตราการแลกเปลี่ยน"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: []),
        ));
  }
}
