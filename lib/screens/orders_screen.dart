import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Orders",
          style: TextStyle(
            color: Colors.black,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () => showMessage(
              context,
              "Shopping bag clicked!",
            ),
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Past Orders",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 18),

            OrderCard(
              image: 'ios/assets/images/restaurant.jpg',
              restaurant: 'The Burger House',
              date: 'November 08, 2026',
              food: '1x Chicken Burger, 1x French Fries',
              price: '৳350',
              onReorder: () => showMessage(
                context,
                "Reorder feature coming soon!",
              ),
              onTip: () => showMessage(
                context,
                "Tip Rider feature coming soon!",
              ),
              onSelect: () => showMessage(
                context,
                "Select Items clicked!",
              ),
            ),

            const SizedBox(height: 18),

            OrderCard(
              image: 'ios/assets/images/restaurantthree.jpg.jpg',
              restaurant: 'Pizza Palace',
              date: 'November 05, 2026',
              food: '1x Cheese Pizza, 1x Cold Drinks',
              price: '৳650',
              onReorder: () => showMessage(
                context,
                "Reorder feature coming soon!",
              ),
              onTip: () => showMessage(
                context,
                "Tip Rider feature coming soon!",
              ),
              onSelect: () => showMessage(
                context,
                "Select Items clicked!",
              ),
            ),

            const SizedBox(height: 18),

            OrderCard(
              image: 'ios/assets/images/restauranttow.jpg.jpg',
              restaurant: 'Food Garden',
              date: 'November 02, 2026',
              food: '2x Chicken Pasta, 1x Juice',
              price: '৳450',
              onReorder: () => showMessage(
                context,
                "Reorder feature coming soon!",
              ),
              onTip: () => showMessage(
                context,
                "Tip Rider feature coming soon!",
              ),
              onSelect: () => showMessage(
                context,
                "Select Items clicked!",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Order Card Widget

class OrderCard extends StatefulWidget {
  final String image;
  final String restaurant;
  final String date;
  final String food;
  final String price;

  final VoidCallback onReorder;
  final VoidCallback onTip;
  final VoidCallback onSelect;

  const OrderCard({
    super.key,
    required this.image,
    required this.restaurant,
    required this.date,
    required this.food,
    required this.price,
    required this.onReorder,
    required this.onTip,
    required this.onSelect,
  });

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  int selectedRating = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: Padding(
        padding: const EdgeInsets.all(14),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.image,
                    height: 75,
                    width: 75,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.restaurant,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        widget.date,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(height: 6),

                      const Text(
                        "Delivered",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
              ],
            ),

            const SizedBox(height: 15),
            const Divider(),
            const SizedBox(height: 10),

            Text(
              widget.food,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Total: ${widget.price}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: widget.onReorder,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF8A00),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Reorder",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: widget.onTip,
                  child: const Text("Tip Rider"),
                ),

                TextButton(
                  onPressed: widget.onSelect,
                  child: const Text("Select Items"),
                ),
              ],
            ),

            const Divider(),

            const Text(
              "Rate your experience",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Row(
              children: List.generate(
                5,
                (index) => IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    setState(() {
                      selectedRating = index + 1;
                    });
                  },
                  icon: Icon(
                    index < selectedRating
                        ? Icons.star
                        : Icons.star_border,
                    color: Colors.orange,
                    size: 27,
                  ),
                ),
              ),
            ),

            if (selectedRating > 0)
              Text(
                "You rated $selectedRating out of 5 stars",
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.green,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
