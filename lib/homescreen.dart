
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF5F5F5),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.track_changes,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    "Sales target reached 65%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  LinearProgressIndicator(
                    value: 0.65,
                    backgroundColor: Colors.white,
                    color: Colors.deepOrange,
                  ),

                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1,000",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "3,000",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Product Summary",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: summaryCard(
                    Icons.shopping_cart,
                    "2,450",
                    "Total Orders",
                    Color(0xFFE3F2FD),
                    Colors.blue,
                  ),
                ),
                SizedBox(width: 12),

                Expanded(
                  child: summaryCard(
                    Icons.remove_red_eye,
                    "8,520",
                    "Product Views",
                    Color(0xFFE8F5E9),
                    Colors.green,
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: summaryCard(
                    Icons.add_box,
                    "120",
                    "New Products",
                    Color(0xFFFFF3E0),
                    Colors.orange,
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: summaryCard(
                    Icons.emoji_events,
                    "Top 10",
                    "Best Seller",
                    Color(0xFFF3E5F5),
                    Colors.purple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget summaryCard(
      IconData icon,
      String number,
      String title,
      Color bgColor,
      Color iconColor,
      ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 30,
          ),
          SizedBox(height: 12),
          Text(
            number,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}