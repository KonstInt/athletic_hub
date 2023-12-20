import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../domain/bloc/authorization_bloc.dart';
import '../domain/models/authorization_model.dart';

class Entering extends StatefulWidget {
  const Entering({super.key});

  @override
  _EnteringState createState() => _EnteringState();
}

class _EnteringState extends State<Entering> {
  String login = '';
  String password = '';
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        loginEnter(context),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50.68.h),
          child: passwordEnter(context),
        ),
        EnterBotton(context),
      ],
    );
  }


  Widget loginEnter(BuildContext context){
    return TextField(
      style: GoogleFonts.montserrat(
        fontSize: 26,
        fontWeight: FontWeight.w300,
      ),
      onChanged: (value)=> setState(()=> this.login = value ),
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xe5ffffff),
          hintText: 'Логин',
          hintStyle: GoogleFonts.montserrat(
            fontSize: 26,
            fontWeight: FontWeight.w300,
          ),
          hoverColor: Colors.transparent,
          prefixIcon: const Padding(
            padding: EdgeInsets.fromLTRB(57, 19, 10, 19),
            child: Icon(Icons.alternate_email,
              color: Colors.black,
            ),
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  width: 1,
                  color: Colors.black
              )
          )
      ),
    );
  }


  Widget passwordEnter(BuildContext context){
    return TextField(
      style: GoogleFonts.montserrat(
        fontSize: 26,
        fontWeight: FontWeight.w300,
      ),
      onChanged: (value)=> setState(()=> this.password = value ),
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xe5ffffff),
          hintText: 'Придумайте пароль',
          hintStyle: GoogleFonts.montserrat(
            fontSize: 26,
            fontWeight: FontWeight.w300,
          ),
          hoverColor: Colors.transparent,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              color: Colors.black,
              onPressed: ()=> setState(() => isPasswordVisible = !isPasswordVisible),
              icon: isPasswordVisible ?
              const Icon(Icons.visibility_off_outlined):
              const Icon(Icons.visibility_outlined),
            ),
          ),
          prefixIcon:
          const Padding(
            padding: EdgeInsets.fromLTRB(57, 19, 10, 19),
            child: Icon(Icons.lock_outline,
              color: Colors.black,
            ),
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  width: 1,
                  color: Colors.black
              )
          )
      ),
      obscureText: isPasswordVisible,
    );
  }

  bool isUnlockButton(){
    return password.isNotEmpty && login.isNotEmpty;
  }

  Widget EnterBotton(BuildContext){
    return ElevatedButton(
      onPressed: isUnlockButton() ?
          (){
            Navigator.of(context).pop();
            AuthorizationModel auth = AuthorizationModel(login: login, password: password);
            context.read<AuthorizationBloc>().add(AuthEvent(auth));
          }:
      null,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffededed),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fixedSize: const Size(220, 60)
      ),
      child: Text(
        'ВОЙТИ',
        style: GoogleFonts.montserrat(
          fontSize: 26,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
