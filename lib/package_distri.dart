import 'package:flutter/material.dart';

class PackageSelectionScreen extends StatefulWidget {
  @override
  _PackageSelectionScreenState createState() => _PackageSelectionScreenState();
}

class _PackageSelectionScreenState extends State<PackageSelectionScreen> {
  String _selectedPackage = "Basic";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select a package"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PackageCard(
              title: "Basic",
              price: "\$50",
              features: [
                "Up to 5 minutes of footage",
                "2 rounds of revisions",
              ],
              isSelected: _selectedPackage == "Basic",
              onTap: () {
                setState(() {
                  _selectedPackage = "Basic";
                });
              },
            ),
            PackageCard(
              title: "Pro",
              price: "\$100",
              features: [
                "Up to 10 minutes of footage",
                "3 rounds of revisions",
                "Custom color grading",
              ],
              isSelected: _selectedPackage == "Pro",
              onTap: () {
                setState(() {
                  _selectedPackage = "Pro";
                });
              },
            ),
            PackageCard(
              title: "Premium",
              price: "\$200",
              features: [
                "Up to 20 minutes of footage",
                "Unlimited revisions",
                "Custom sound design",
                "Social media optimization",
              ],
              isSelected: _selectedPackage == "Premium",
              onTap: () {
                setState(() {
                  _selectedPackage = "Premium";
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Next"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;
  final bool isSelected;
  final Function onTap;

  const PackageCard({
    Key? key,
    required this.title,
    required this.price,
    required this.features,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap as void Function()?,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.green,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 8),
            Text(
              price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: features.map((feature) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.check, size: 16),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          feature,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList()),
          ],
        ),
      ),
    );
  }
}
