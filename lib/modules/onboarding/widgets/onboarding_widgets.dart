import 'package:flutter/material.dart';
import 'package:pertemuan_16/modules/board%20page/view/boardpage_view.dart';
import 'package:pertemuan_16/modules/login/view/login_view.dart';

class OnboardWidget extends StatelessWidget {
  const OnboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                buildHeader(),
                const SizedBox(height: 30),
                buildIllustration(),
                const SizedBox(height: 20),
                buildTitleAndDescription(),
              ],
            ),
            Column(
              children: [
                buildIndicators(),
                const SizedBox(height: 20),
                buildButtons(context),
                const SizedBox(height: 20),
                buildFooter(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset('lib/design_system/assets/Gojek Logo.png',
              height: 24),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(90),
            ),
            child: const Text(
              'IND',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildIllustration() {
    return Image.asset('lib/design_system/assets/1.png', height: 200);
  }

  Widget buildTitleAndDescription() {
    return Column(
      children: const [
        Text(
          'Selamat datang di gojek!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhanmu, kapanpun, dan di manapun.',
            style: TextStyle(fontSize: 14, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget buildIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: index == 0 ? 10 : 8,
          height: index == 0 ? 10 : 8,
          decoration: BoxDecoration(
            color: index == 0 ? const Color(0xFF006C02) : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }

  Widget buildButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF006C02),
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Masuk',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginView()),
              );
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xFF006C02)),
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Belum ada akun?, Daftar dulu',
              style: TextStyle(fontSize: 16, color: Color(0xFF006C02)),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooter() {
    return Column(
      children: const [
        Text(
          'Dengan masuk atau mendaftar, kamu menyetujui',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        Text(
          'Ketentuan layanan dan Kebijakan privasi.',
          style: TextStyle(fontSize: 12, color: Colors.blue),
        ),
      ],
    );
  }
}
