import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/custom_suffix_icon.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/default_button.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/complete_profile/complete_profile_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email = ''; // Nullable string
  String password = '';
  String confirmPassword = '';
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: "Selanjutnya",
              press: () {
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }),
        ],
      ),
    );
  }

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onChanged: (newValue) => confirmPassword = newValue,
      decoration: const InputDecoration(
        labelText: "Konfirmasi password",
        hintText: "Konfirmasi password Anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onChanged: (newValue) => password = newValue,
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Masukkan password Anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue, // Nullable string assignment
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Masukkan email Anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
