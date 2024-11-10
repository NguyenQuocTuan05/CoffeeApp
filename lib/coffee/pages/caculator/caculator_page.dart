import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/provider/provider_caculation.dart';
import 'package:provider/provider.dart';

class CaculatorPage extends StatelessWidget {
  const CaculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Calculate',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: num1Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Nhap so thu 1',
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: num2Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Nhap so thu 2',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ['+', '-', '*', '/'].map(
                (operator) {
                  return GestureDetector(
                    onTap: () {
                      final num1 = double.tryParse(num1Controller.text) ?? 0;
                      final num2 = double.tryParse(num2Controller.text) ?? 0;
                      Provider.of<ProviderCalculation>(context, listen: false)
                          .calculate(num1, num2, operator);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: Text(operator),
                    ),
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blueAccent,
              ),
              child: Consumer<ProviderCalculation>(
                builder: (context, provider, child) {
                  return Text(
                    provider.currentResult,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Consumer<ProviderCalculation>(
                builder: (context, provider, child) {
                  return ListView.builder(
                    itemCount: provider.calculations.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          provider.calculations[index],
                          style: TextStyle(
                            color: index == 0 ? Colors.red : Colors.black,
                            fontWeight: index == 0
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
