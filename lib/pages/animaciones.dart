import 'package:flutter/material.dart';

class Animaciones extends StatelessWidget {
  const Animaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: CuadradoAnimado()));
  }
}

class CuadradoAnimado extends StatefulWidget {
  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotation;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 4000));
    rotation = Tween(begin: 0.0, end: 2.0).animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Play o reproducir
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(angle: rotation.value, child: _Cuadrado());
      },
    );
  }
}

class _Cuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}
