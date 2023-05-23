import 'package:flutter/material.dart';

import 'main.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(icon: Icons.description),
                  MyImage(h: 150, w: 150),
                  MyButton(icon: Icons.more_horiz),
                ],
              ),
              const Spacer(),
              const Song(str2: 'Holix', str1: 'Flume'),
              const SizedBox(height: 10),
              const Song(str2: 'Never Be Like You', str1: 'Flume x Kia'),
              const SizedBox(height: 10),
              Container(
                color: const Color.fromRGBO(202, 197, 227, .5),
                child: Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Unavailable',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text(
                            'Davido',
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 12),
                          ),
                        ]),
                    const Spacer(),
                    const MyButton(
                      icon: Icons.stop,
                      p: 8,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Song(str2: 'Numb & Getting Colder', str1: 'Flume & Kusha'),
              const SizedBox(height: 10),
              const Song(str2: 'Say it', str1: 'Flume'),
              const SizedBox(height: 100),
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

class Song extends StatelessWidget {
  final String str2;

  final String str1;

  const Song({super.key, required this.str2, required this.str1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            str1,
            style: TextStyle(color: Colors.grey[600]),
          ),
          Text(
            str2,
            style: TextStyle(color: Colors.grey[400], fontSize: 12),
          ),
        ]),
        const Spacer(),
        const MyButton(
          icon: Icons.play_arrow,
          p: 8,
        ),
      ],
    );
  }
}
