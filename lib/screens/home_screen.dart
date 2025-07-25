import 'package:flutter/material.dart';
import 'package:flutter_thems_1/widgest/app_bar.dart';
import 'package:flutter_thems_1/widgest/buttom_nav.dart';
import 'package:flutter_thems_1/widgest/category_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: CategoryItem(icon: Icons.weekend, label: 'Sofas'),
                  ),
                  Expanded(
                    child: CategoryItem(icon: Icons.desktop_windows, label: 'Desk'),
                  ),
                  Expanded(
                    child: CategoryItem(icon: Icons.chair_alt, label: 'Dresser'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('asset/dask.png', height: 100),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("FinnNavian",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Icon(Icons.favorite_border, color: Colors.red),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black",
                          style: TextStyle(color: Colors.grey),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              color: Colors.orange[200],
                              child: const Text(
                                '\$500',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.amber,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: const Text(
                                  'Add to cart',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
  currentIndex: _selectedIndex,
  onTap: (index) => setState(() => _selectedIndex = index),
),

    );
  }
}
