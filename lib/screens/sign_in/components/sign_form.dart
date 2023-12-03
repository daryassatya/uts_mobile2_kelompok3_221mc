import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/custom_suffix_icon.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/default_button.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/form_error.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email = ''; // Nullable string
  String password = '';
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value ?? true;
                  });
                },
              ),
              Text("Ingat saya"),
              Spacer(),
              Text(
                "Lupa password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Masuk",
            press: () {
              if (_formKey.currentState != null &&
                  _formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onChanged: (newValue) => password = newValue,
      decoration: InputDecoration(
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
      validator: (value) {},
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Masukkan email Anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
