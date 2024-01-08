
import 'package:flutter/material.dart';

class SplashScrren2 extends StatelessWidget {
  const SplashScrren2({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages=[
      Column(
        children: [
          Image.asset("assets/images/enteraddress.png"),
          Text("Set your DeLivery Location")
        ],
      ),
      Column(
        children: [
          Image.asset("assets/images/orderfood.png"),
          Text("Order Online From Your Fav Store")
        ],
      ),
      Column(
        children: [
          Image.asset("assets/images/deliveryfood.png"),
          Text("Quick Deliver To Your Door")
        ],
      )
    ];
    final _controller = PageController(initialPage: 0);
    
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: _pages,
      ),
    );
  }
}

