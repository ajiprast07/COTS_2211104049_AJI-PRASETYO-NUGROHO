import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String balance;

  const BalanceCard({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'gopay',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                balance,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.add, color: Colors.white),
              Icon(Icons.payment, color: Colors.white),
              Icon(Icons.explore, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}

class FeatureGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      children: [
        _buildFeatureIcon(Icons.directions_bike, 'GoRide'),
        _buildFeatureIcon(Icons.car_rental, 'GoCar'),
        _buildFeatureIcon(Icons.fastfood, 'GoFood'),
        _buildFeatureIcon(Icons.send, 'GoSend'),
        _buildFeatureIcon(Icons.store, 'GoMart'),
        _buildFeatureIcon(Icons.phone_android, 'GoPulsa'),
        _buildFeatureIcon(Icons.card_giftcard, 'GoClub'),
        _buildFeatureIcon(Icons.more_horiz, 'More'),
      ],
    );
  }

  Widget _buildFeatureIcon(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 32, color: Colors.green),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class PromoSection extends StatelessWidget {
  final String imagePath;

  const PromoSection({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(imagePath),
      ),
    );
  }
}
