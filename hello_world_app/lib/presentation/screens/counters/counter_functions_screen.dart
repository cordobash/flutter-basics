import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'Click${clickCounter != 1 ? 's' : ''}',
              style: const TextStyle(fontSize: 25),
            ),
            FlutterLogo(size: 100),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 10),
          // Refresh button
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () => {
              setState(() {
                clickCounter = 0;
              }),
            },
          ),
          const SizedBox(height: 10),
          // Incrementar button
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () => {
              setState(() {
                clickCounter++;
              }),
            },
          ),
          const SizedBox(height: 10),
          // Decrementar button
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () => {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              }),
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 10,
 //     backgroundColor: Colors.yellow,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
