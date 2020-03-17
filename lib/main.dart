import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:dashboard.dart'

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
              'https://z4comp.com/uploads/produk_image/image/20864/normal_thumb_245_x_234_logo.png',
              height: 200,
              width: 200,
            ),),
    );
  }
}


bool _isChecked = true;
final TextEditingController _urlcontroller = TextEditingController();
String _url = "";
final TextEditingController _emcontroller = TextEditingController();
String _email = "";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    _loadpref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      color: Colors.lightBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Center(
                child: Image.network(
              'https://z4comp.com/uploads/produk_image/image/20864/normal_thumb_245_x_234_logo.png',
              height: 120,
              width: 120,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Selamat Datang, Silahkan Login",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _urlcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(
                  Icons.link,
                  size: 40,
                  color: Colors.white,
                ),
                hintText: "Masukkan URL",
                hintStyle: TextStyle(color: Colors.white),
                labelText: "URL",
                labelStyle: TextStyle(color: Colors.white)),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _emcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(
                  Icons.email,
                  size: 40,
                  color: Colors.white,
                ),
                hintText: "Masukkan Email",
                hintStyle: TextStyle(color: Colors.white),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.white)),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked,
                onChanged: (bool value) {
                  _onChange(value);
                },
              ),
              Text(
                'Remember',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Color.fromARGB(2555, 57, 180, 65),
            elevation: 5,
            child: Container(
              height: 50,
              child: InkWell(
                splashColor: Colors.white,
                onTap: _onTap,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  void _onTap() {
    print(_urlcontroller.text);
    print(_emcontroller.text);
    if (_checkEmail(_emcontroller.text)) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(),
        ),
      );
      return;
    } else {
      print("Succes Login");
    }
  }

  void _onChange(bool value) {
    setState(() {
      _isChecked = value;
      print('Check value $value');
      _savePref(value);
    });
  }

  bool _checkEmail(String email) {
    bool emailValid =
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    return emailValid;
  }

  void _savePref(bool value) async {
    SharedPreferences.setMockInitialValues({});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _url = _urlcontroller.text;
    _email = _emcontroller.text;
    if (value) {
      if (_checkEmail(_email)) {
        await prefs.setString('url', _url);
        await prefs.setString('email', _email);
        print('Pref Stored');
      } else {
        print('email invalid!');
        setState(() {
          _isChecked = false;
        });
      }
    } else {
      await prefs.setString('url', '');
      await prefs.setString('email', '');
      setState(() {
        _urlcontroller.text = '';
        _emcontroller.text = '';
        _isChecked = false;
      });
      print('pref removed');
    }
  }

  void _loadpref() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    _url = (pref.getString('url'));
    _email = (pref.getString('email'));
    print(_url);
    print(_email);
    if(_email.length>1){
      _urlcontroller.text = _url;
      _emcontroller.text = _email;
      setState(() {
        _isChecked = true;
      });
    }else{
      setState(() {
        _isChecked = false;
      });
    }
  }
}
