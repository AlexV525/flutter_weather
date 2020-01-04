///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-05 03:14
///
part of 'painters.dart';

class HoursDetailPainter extends CustomPainter {
  final List<int> degrees;

  HoursDetailPainter({@required this.degrees});

  final strokeWidth = 1.0;
  final color = Colors.white;
  final textStyle = TextStyle(color: Colors.white, fontSize: 12.0);

  double getYOffset({Size size, int degree, double max, double min}) {
    return size.height - (degree - min) / (max - min) * size.height;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double max = 0.0;
    double min;
    for (final degree in degrees) {
      if (degree > max) max = degree.toDouble();
      if (min == null) min = max;
      if (degree < min) min = degree.toDouble();
    }

    Offset lastPoint = Offset(
      WeatherPageState.sectionContentWidth / 12,
      getYOffset(size: size, degree: degrees[0], min: min, max: max),
    );

    final circlePaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true;

    final linePaint = Paint()
      ..color = color.withOpacity(0.7)
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true;

    for (int i = 0; i < degrees.length; i++) {
      final _point = Offset(
        WeatherPageState.sectionContentWidth / 6 * (i + 0.5),
        getYOffset(size: size, degree: degrees[i], min: min, max: max),
      );
      canvas.drawLine(lastPoint, _point, linePaint);
      lastPoint = _point;
      canvas.drawCircle(lastPoint, 3.0, circlePaint);
      TextPainter(
        text: TextSpan(text: '${degrees[i]}°', style: textStyle),
        textDirection: TextDirection.ltr,
      )
        ..layout()
        ..paint(
          canvas,
          Offset(lastPoint.dx - degrees[i].toString().length * 4, lastPoint.dy - 24.0),
        );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
