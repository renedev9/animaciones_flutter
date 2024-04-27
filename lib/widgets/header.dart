import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      color: Color(
        0xff615AAB,
      ),
      height: deviceSize.height * 0.4,
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  const HeaderBordesRedondeados({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        color: Color(
          0xff615AAB,
        ),
      ),
    );
  }
}

///////////////////////////////////USO del CustomPaint///////////////////////////////////////////////////
class HeaderPainter extends StatelessWidget {
  const HeaderPainter({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavesGradientPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //Propiedades
    paint.color = Color(0xff615AAB);
    paint.strokeWidth = 5;
    paint.style = PaintingStyle
        .fill; //.fill : pintar en forma de linea .stroke: pintar relleno
    //Path: como se mueve el lapiz o painter
    final path = Path();
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //Propiedades
    paint.color = Color(0xff615AAB);
    paint.strokeWidth = 5;
    paint.style = PaintingStyle
        .fill; //.fill : pintar en forma de linea .stroke: pintar relleno
    //Path: como se mueve el lapiz o painter
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //Propiedades
    paint.color = Color(0xff615AAB);
    paint.strokeWidth = 5;
    paint.style = PaintingStyle
        .fill; //.fill : pintar en forma de linea .stroke: pintar relleno
    //Path: como se mueve el lapiz o painter
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //Propiedades
    paint.color = Color(0xff615AAB);
    paint.strokeWidth = 5;
    paint.style = PaintingStyle
        .fill; //.fill : pintar en forma de linea .stroke: pintar relleno
    //Path: como se mueve el lapiz o painter
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.4,
      size.width,
      size.height * 0.25,
    );

    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //Propiedades
    paint.color = Color(0xff615AAB);
    paint.strokeWidth = 5;
    paint.style = PaintingStyle
        .fill; //.fill : pintar en forma de linea .stroke: pintar relleno
    //Path: como se mueve el lapiz o painter
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.3,
      size.width * 0.5,
      size.height * 0.25,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.2,
      size.width,
      size.height * 0.25,
    );
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderBottomWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //Propiedades
    paint.color = Color(0xff615AAB);
    paint.strokeWidth = 5;
    paint.style = PaintingStyle
        .fill; //.fill : pintar en forma de linea .stroke: pintar relleno
    //Path: como se mueve el lapiz o painter
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.85,
        size.width * 0.50, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.65, size.width, size.height * 0.75);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWavesGradientPainter extends CustomPainter {
  final Rect rect = Rect.fromCircle(center: Offset(0.0, 150.0), radius: 180);
  final Gradient gradient = new LinearGradient(colors: [
    Color(0xff615AAB),
    Color(0xffC012FF),
    Color(0xff6D05FA),
  ], stops: [
    0.2,
    0.5,
    1.0
  ]);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()..shader = gradient.createShader(rect);

    //Propiedades
    //paint.color = Color(0xff615AAB);
    paint.strokeWidth = 5;
    paint.style = PaintingStyle
        .fill; //.fill : pintar en forma de linea .stroke: pintar relleno
    //Path: como se mueve el lapiz o painter
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.85,
        size.width * 0.50, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.65, size.width, size.height * 0.75);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
