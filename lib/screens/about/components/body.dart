import 'package:flutter/material.dart';
import 'package:uts_mobile2_kelompok3_221mc/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/kedai-sttb.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          // Teks rata tengah
          const Text(
            'Kedai STTB',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          const Text(
            'Kedai STTB adalah Aplikasi berbasis Mobile \nUntuk Thrifting barang-barang di lingkungan STTB',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
              height: getProportionateScreenWidth(
                  10)), // Spasi sebelum teks hak cipta
          const Text(
            '© DimasAryasatya_21552011325', // Ganti tahun sesuai dengan tahun sekarang
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey, // Atur warna teks hak cipta sesuai kebutuhan
            ),
          ),
        ],
      ),
    );
  }
}
