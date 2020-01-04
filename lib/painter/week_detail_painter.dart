///
/// [Author] Alex (https://github.com/AlexVincent525)
/// [Date] 2020-01-05 03:12
///
part of 'painters.dart';

class WeekDetailPainter extends CustomPainter {
  final List<int> maxDegrees;
  final List<int> minDegrees;

  WeekDetailPainter({
    @required this.maxDegrees,
    @required this.minDegrees,
  });

  final strokeWidth = 1.0;
  final color = Colors.white;
  final textStyle = TextStyle(
    color: Colors.white.withOpacity(0.7),
    fontSize: 12.0,
  );

  double getYOffset({Size size, int degree, double max, double min}) {
    return size.height - (degree - min) / (max - min) * size.height;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double max = 0.0;
    double min = 0.0;
    for (final degree in maxDegrees) {
      if (degree > max) max = degree.toDouble();
    }
    min = max;
    for (final degree in minDegrees) {
      if (degree < min) min = degree.toDouble();
    }

    Offset lastMaxPoint = Offset(
      0,
      getYOffset(size: size, degree: maxDegrees[0], min: min, max: max),
    );

    Offset lastMinPoint = Offset(
      size.width,
      getYOffset(size: size, degree: minDegrees[6], min: min, max: max),
    );

    final circlePaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true;

    final maxPaint = Paint()
      ..color = color.withOpacity(0.7)
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true;

    final minPaint = Paint()
      ..color = color.withOpacity(0.4)
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true;

    final progressPaint = Paint()
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white.withOpacity(0.3), Colors.white.withOpacity(0.05)],
      ).createShader(Rect.fromCenter(
        center: lastMaxPoint,
        width: size.width,
        height: size.height,
      ));

    final path = Path()..moveTo(lastMaxPoint.dx, lastMaxPoint.dy);

    for (int i = 0; i < maxDegrees.length; i++) {
      final _maxPoint = Offset(
        size.width / maxDegrees.length * (i + 0.5),
        getYOffset(
          size: size,
          degree: maxDegrees[i],
          min: min,
          max: max,
        ),
      );
      canvas.drawLine(lastMaxPoint, _maxPoint, maxPaint);
      lastMaxPoint = _maxPoint;
      canvas.drawCircle(lastMaxPoint, 3.0, circlePaint);
      TextPainter(
        text: TextSpan(text: '${maxDegrees[i]}°', style: textStyle),
        textDirection: TextDirection.ltr,
      )
        ..layout()
        ..paint(
          canvas,
          Offset(
            lastMaxPoint.dx - maxDegrees[i].toString().length * 4,
            lastMaxPoint.dy - 24.0,
          ),
        );
      path.lineTo(lastMaxPoint.dx, lastMaxPoint.dy);
    }
    canvas.drawLine(lastMaxPoint, Offset(size.width, lastMaxPoint.dy), maxPaint);
    path.lineTo(size.width, lastMaxPoint.dy);
    path.lineTo(size.width, lastMinPoint.dy);

    for (int i = minDegrees.length - 1; i >= 0; i--) {
      final _minPoint = Offset(
        size.width / minDegrees.length * (i + 0.5),
        getYOffset(
          size: size,
          degree: minDegrees[i],
          min: min,
          max: max,
        ),
      );
      canvas.drawLine(lastMinPoint, _minPoint, minPaint);
      lastMinPoint = _minPoint;
      canvas.drawCircle(lastMinPoint, 2.0, circlePaint);
      TextPainter(
        text: TextSpan(text: '${minDegrees[i]}°', style: textStyle),
        textDirection: TextDirection.ltr,
      )
        ..layout()
        ..paint(
          canvas,
          Offset(
            lastMinPoint.dx - minDegrees[i].toString().length * 4,
            lastMinPoint.dy + 12.0,
          ),
        );
      path.lineTo(lastMinPoint.dx, lastMinPoint.dy);
    }
    canvas.drawLine(lastMinPoint, Offset(0, lastMinPoint.dy), minPaint);

    path.lineTo(0, lastMinPoint.dy);
    path.lineTo(0, getYOffset(size: size, degree: maxDegrees[0], min: min, max: max));

    canvas.drawPath(path, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
