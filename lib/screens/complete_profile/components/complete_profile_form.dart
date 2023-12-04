import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/custom_suffix_icon.dart';
import 'package:uts_mobile2_kelompok3_221mc/components/default_button.dart';
import 'package:uts_mobile2_kelompok3_221mc/screens/home/home_screen.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName = ''; // Nullable string
  String lastName = '';
  String phoneNumber = '';
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Selanjutnya",
            press: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) =>
          address = newValue ?? '', // Nullable string address
      decoration: InputDecoration(
        labelText: "Alamat",
        hintText: "Masukkan alamat Anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) =>
          phoneNumber = newValue ?? '', // Nullable string assignment
      decoration: InputDecoration(
        labelText: "Nomor telepon",
        hintText: "Masukkan nomor telepon Anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) =>
          firstName = newValue ?? '', // Nullable string assignment
      decoration: InputDecoration(
        labelText: "Nama depan",
        hintText: "Masukkan nama depan Anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) =>
          lastName = newValue ?? '', // Nullable string assignment
      decoration: InputDecoration(
        labelText: "Nama belakang",
        hintText: "Masukkan nama belakang Anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
