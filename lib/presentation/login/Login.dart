import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_clothes/Resource/fonts_manager.dart';
import 'package:shop_clothes/Resource/strings_manager.dart';
import 'package:shop_clothes/Resource/values_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _isHidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Image.asset("asset/images/login.jpg"),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: AppPadding.p32, right: AppPadding.p32),
                child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _email,
                    style: TextStyle(
                        fontSize: FontSize.s17,
                        fontWeight: FontWeightManager.semiBold),
                    decoration: InputDecoration(
                        labelText: AppStrings.email,
                        labelStyle: TextStyle(fontSize: FontSize.s14),
                        hintText: AppStrings.email,
                        prefixIcon: Icon(Iconsax.user),
                        contentPadding: EdgeInsets.fromLTRB(10, 17, 10, 17))),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: AppPadding.p32, right: AppPadding.p32),
                child: TextFormField(
                    obscureText: _isHidePassword,
                    keyboardType: TextInputType.visiblePassword,
                    controller: _password,
                    style: TextStyle(
                        fontSize: FontSize.s16,
                        fontWeight: FontWeightManager.semiBold),
                    decoration: InputDecoration(
                        labelText: AppStrings.password,
                        labelStyle: TextStyle(fontSize: FontSize.s14),
                        hintText: AppStrings.password,
                        prefixIcon: Icon(Iconsax.lock),
                        contentPadding: EdgeInsets.fromLTRB(10, 17, 10, 17))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
