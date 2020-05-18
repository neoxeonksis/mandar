import 'package:flutter/material.dart';
import 'package:mandadero/state/loginstate.dart';
import 'package:provider/provider.dart';

class ProfileCliente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _token = Provider.of<LoginState>(context).isToken();
    
    return Scaffold(
      backgroundColor: Colors.yellow,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           Provider.of<LoginState>(context, listen: false).logout();
        },
        child: Icon(

           Icons.exit_to_app,
        ),
      ),
      body: Center(
        child: Text('Bienvenido\n$_token'),
      ),
    );
  }
}
