import 'package:ahmad_abo_habel_assignment4_01/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SecondPage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double x = .3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(icon: Icons.arrow_back),
                  MyButton(icon: Icons.stop),
                ],
              ),
              const Spacer(),
              const MyImage(h: 200, w: 200),
              const SizedBox(height: 10),
              const Text('Unavailable',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 24)),
              const SizedBox(height: 10),
              const Text('Davido',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              const SizedBox(height: 20),
              Slider(
                  value: x,
                  divisions: 10,
                  max: 10,
                  min: 0,
                  onChanged: (val) {
                    setState(() {
                      x = val;
                    });
                  }),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const MyButton(
                    icon: Icons.fast_rewind,
                    p: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.grey,
                        offset: Offset(15, 15),
                      ),
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.white,
                        offset: Offset(-15, -15),
                      ),
                    ], shape: BoxShape.circle, color: Colors.blue),
                    child: const Icon(
                      Icons.pause,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  const MyButton(
                    icon: Icons.fast_forward,
                    p: 24,
                  )
                ],
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final IconData icon;

  final double p;

  const MyButton({super.key, required this.icon, this.p = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(p),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          blurRadius: 20,
          color: Colors.grey,
          offset: Offset(15, 15),
        ),
        BoxShadow(
          blurRadius: 20,
          color: Colors.white,
          offset: Offset(-15, -15),
        ),
      ], shape: BoxShape.circle, color: Colors.grey[200]),
      child: Icon(
        icon,
        size: 24,
        color: Colors.grey,
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  final double h;

  final double w;

  const MyImage({super.key, required this.h, required this.w});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(
                  'https://ggsc.s3.amazonaws.com/images/made/images/uploads/The_Science-Backed_Benefits_of_Being_a_Dog_Owner_300_200_int_c1-1x.jpg'),
              fit: BoxFit.cover)),
    );
  }
}
