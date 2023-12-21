import 'package:athletic_hub/app/feature/registration/domain/bloc/authorization_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../domain/models/authorization_model.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String login = '';
  String password = '';
  String passwordCopy = '';
  bool isPasswordVisible = true;
  bool isPasswordRepeatVisible=true;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        loginCreat(context),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 50.68.h),
          child: passwordCreat(context),
        ),
        passwordRepeat(context),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: RegistrationBotton(BuildContext),
        ),
      ],
    );
  }

  Widget loginCreat(BuildContext context){
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

  Widget passwordCreat(BuildContext context){
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

  Widget passwordRepeat(BuildContext context){
    return
      TextField(
        style: GoogleFonts.montserrat(
          fontSize: 26,
          fontWeight: FontWeight.w300,
        ),
            onChanged: (value)=> setState(()=> this.passwordCopy = value ),
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xe5ffffff),
                hintText: 'Повторите пароль',
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 26,
                  fontWeight: FontWeight.w300,
                ),
                hoverColor: Colors.transparent,
                errorText: passwordCopy==password ? '' :'Пароли не совпадают',
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: IconButton(
                    color: Colors.black,
                    onPressed: ()=> setState(() => isPasswordRepeatVisible = !isPasswordRepeatVisible),
                    icon: isPasswordRepeatVisible ?
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
            obscureText: isPasswordRepeatVisible,
      );
  }
  bool isUnlockButton(){
    return password == passwordCopy && password.isNotEmpty && passwordCopy.isNotEmpty && login.isNotEmpty;
  }

  Widget RegistrationBotton(BuildContext){
    return ElevatedButton(
        onPressed: isUnlockButton() ?
        (){
          Navigator.of(context).pop();
          AuthorizationModel auth = AuthorizationModel(login: login, password: password);
          context.read<AuthorizationBloc>().add(AuthEvent(auth));
        }:
        null,
        child: Text(
          'ЗАРЕГИСТРИРОВАТЬСЯ',
          style: GoogleFonts.montserrat(
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffededed),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: Size(423, 60)
      ),
    );
  }


}
