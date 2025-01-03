import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan_16/modules/board%20page/controller/boardpage_controller.dart';
import 'package:pertemuan_16/modules/board%20page/widget/boardpage_widget.dart';

class HomeController extends GetxController {
  var balance = 100000.obs;
}

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search, size: 28),
                  Icon(Icons.person, size: 28),
                ],
              ),
            ),
            Obx(() => BalanceCard(
                balance: controller.balance.value)), // Menggunakan Obx
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: FeatureGrid(),
            ),
            SizedBox(height: 16),
            PromoSection(imagePath: 'assets/images/promo1.png'),
            PromoSection(imagePath: 'assets/images/promo2.png'),
            PromoSection(imagePath: 'assets/images/promo3.png'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: 'Promos'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class BalanceCard extends StatelessWidget {
  final int balance;

  const BalanceCard({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Balance",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                "\$${balance.toString()}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.widgets, size: 32),
            SizedBox(height: 8),
            Text(
              "Feature ${index + 1}",
              style: TextStyle(fontSize: 12),
            ),
          ],
        );
      },
      itemCount: 8,
    );
  }
}

class PromoSection extends StatelessWidget {
  final String imagePath;

  const PromoSection({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Image.asset(imagePath),
    );
  }
}
